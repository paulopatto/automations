# GIT

Configurações para uso do `scm-git`. Você pode usar essas configurações avulsas com os seguintes comandos:

Configurações do git: `mv ./gitconfig $HOME/.gitconfig`

> Lembre-se de trocar as chaves de nome e e-mail

### Commit only part of a file in Git
> Source: http://stackoverflow.com/questions/1085162/commit-only-part-of-a-file-in-git

For commit only part of a file you can use the command `git add --patch <filename>` or `git add -p <filename>` 
and git will to break down you file into what it thinks are sensible "hunks" (portions of the file).

See bellow a documentation for option `-P` for git-add:

>
> -p, --patch
>   Interactively choose hunks of patch between the index and the work tree and add them to the index. 
>   This gives the user a chance to review the difference before adding modified contents to the index.
> 

When using `-p` I'll be asked about this question:

> Stage this hunk [y,n,q,a,d,/,j,J,g,s,e,?]?

Here is a description of each option:

- `y` :  stage this hunk for the next commit
- `n` :  do not stage this hunk for the next commit
- `q` :  quit; do not stage this hunk or any of the remaining hunks
- `a` :  stage this hunk and all later hunks in the file
- `d` :  do not stage this hunk or any of the later hunks in the file
- `g` :  select a hunk to go to
- `/` :  search for a hunk matching the given regex
- `j` :  leave this hunk undecided, see next undecided hunk
- `J` :  leave this hunk undecided, see next hunk
- `k` :  leave this hunk undecided, see previous undecided hunk
- `K` :  leave this hunk undecided, see previous hunk
- `s` :  split the current hunk into smaller hunks
- `e` :  manually edit the current hunk
- `?` :  print hunk help

If the file is not in the repository yet, you can first do `git add -N <filename>`. 
Afterwards you can go on with `git add -p <filename>`.

> Note this is far different than the `git format-patch` command, 
> which purpose is to parse commit data into a `.patch` files.

See this little video about it

[![Intro to git add patch mode tutorial](http://img.youtube.com/vi/Wl0NfWYrvlY/0.jpg)](http://www.youtube.com/watch?v=Wl0NfWYrvlY)
> Credits: http://johnkary.net/blog/git-add-p-the-most-powerful-git-feature-youre-not-using-yet/
