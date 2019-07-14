VERSION=5.0
PACKAGE_NAME=apache-jmeter
DOWNLOAD_URL="http://ftp.unicamp.br/pub/apache/jmeter/binaries/$PACKAGE_NAME-$VERSION.tgz"

#Def Download pack and enter dir
echo "Dowloading from $DOWNLOAD_URL ..."
curl $DOWNLOAD_URL -O /tmp/$PACKAGE_NAME-$VERSION.tgz
pushd /tmp
#End def

#Def checksum
# Download https://www.apache.org/dist/jmeter/binaries/apache-jmeter-5.0.tgz.sha512
# sha512sum  read https://www.maketecheasier.com/check-sha1-sha256-sha512-hashes-on-linux/

#Unpack
tar -xzf $PACKAGE_NAME-$VERSION.tgz
