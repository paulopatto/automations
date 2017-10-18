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


# Assinando commits usando GPG

## Gerando a chave

> Você pode ver um artigo muito bom em https://help.github.com/articles/generating-a-new-gpg-key/ e a [importãncia de ter essa feature no seu workflow de uso do git](https://github.com/paulopatto/dotfiles/issues/24)

### Algoritmos suportados

O github* suporta alguns algoritmos para chaves GPG, se você tentar usar um algoritmo não suportado você vai encontrar um erro.

- RSA
- ElGamal
- DSA
- ECDH
- ECDSA
- EdDSA

### Geranto a chave GPG

> Geração baseada em sistema Linux Ubuntu

Entre com o comando `gpg --gen-key` e faça as escolhas ([baseadas no artigo: Criando A chave GPG perfeita](https://alexcabal.com/creating-the-perfect-gpg-keypair/)):

Algoritmo:

```
Please select what kind of key you want:
  (1) RSA and RSA (default)
  (2) DSA and Elgamal
  (3) DSA (sign only)
  (4) RSA (sign only)
Your selection? [1]
```

Tamanho da chave:

```
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) [4096]
```

Validade / Tempo de expiração:

```
Please specify how long the key should be valid.
  0 = key does not expire
  <n>  = key expires in n days
  <n>w = key expires in n weeks
  <n>m = key expires in n months
  <n>y = key expires in n years
Key is valid for? (0) [0]
```

Confirma essa opção de não expirar:

```
Key does not expire at all
Is this correct? (y/N) [y]
```

Se identificando:

```
You need a user ID to identify your key; the software constructs the user ID
from the Real Name, Comment and E-mail Address in this form:
  "Heinrich Heine (Der Dichter) <heinrichh@duesseldorf.de>"

Real name: Paulo Patto
E-mail address: paulopatto@example.org
Comment: 
You selected this USER-ID:
  "Paulo Patto <paulopatto@example.org>"
```

Colocando uma senha:

```
You need a Passphrase to protect your secret key.
<type your passphrase>
```

### Listando e verificando chaves

Use o comando `gpg --list-secret-keys --keyid-format LONG` para listar suas chaves GPG. 
Uma informação muito útil com este comando é o ID da chave GPG no exemplo a seguir o id da chave é `3AA5C34371567BD2` (na linha sec):

```sh
gpg --list-secret-keys --keyid-format LONG
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```
 Você pode gerar a sua chave GPG com o comando de exportação:

 ```sh
 gpg --armor --export 3AA5C34371567BD2
 ```
 Copie sua chave GPG, começando com `-----BEGIN PGP PUBLIC KEY BLOCK-----` e terminando com `-----END PGP PUBLIC KEY BLOCK-----`.
 
 E ai é só adicionar ao Github.
