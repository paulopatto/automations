#!/usr/bin/env bash
# Nerd Fonts Version: 2.1.0
# Script Version: 1.1.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# adds Windows versions of the fonts as well (casks files just won't download them)

#set -x

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
echo "dir $scripts_root_dir"
outputdir=$scripts_root_dir../../archives

cd "$scripts_root_dir/../../patched-fonts/" || {
  echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
  exit 1
}

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 1 ]
  then
    pattern=$1
    search_pattern="*$1*.zip"
    echo "$LINE_PREFIX Limiting archive to pattern '$pattern'"
else
    pattern=".*"
    search_pattern="*.zip"
    echo "$LINE_PREFIX No limiting pattern given, will search entire folder"
fi

# clear out the directory zips
find "${outputdir:?}" -name "$search_pattern" -type f -delete

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 0 -type d | # uncomment to test 1 font
# uncomment to test all fonts:
find -- * -maxdepth 0 -iregex "$pattern" -type d |
while read -r filename
do

  basename=$(basename "$filename")
  searchdir=$filename

  [[ -d "$outputdir" ]] || mkdir -p "$outputdir"

  # -ic (ignore case not working)
  zip -9 "$outputdir/$basename" -rj "$searchdir" -i '*.[o,t]tf' -i '*.[O,T]TF'
  zipStatus=$?
  if [ "$zipStatus" != "0" ]
  then
    echo "$LINE_PREFIX Could not create archive with the path junked (-j option) - likely same font names for different paths, zip status: $zipStatus"
    echo "$LINE_PREFIX Retrying with full path"
    zip -9 "$outputdir/$basename" -r "$searchdir" -i '*.[o,t]tf' -i '*.[O,T]TF'
  fi;
done
