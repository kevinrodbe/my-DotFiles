<h1 align="center">
	<img width="120" src="http://i.imgur.com/jj0eFTb.png" alt="kevinrodbe's dotfiles">
  <br>
</h1>

# [Kevinrodbe's][web] dotfiles ✌
My personal dotfiles and configuration for Ubuntu.
You're welcome to make suggestions.

## Installation 🚀
1.- **Clone** it wherever you want (I like to keep it in `~/home/MyUser/projects`), and `cd` into local dotfiles repository 🐑
```sh
  git clone https://github.com/kevinrodbe/my-DotFiles.git dotfiles && cd dotfiles
```
Or **download** it without Git (downloaded in home directory: `~/dotfiles`) ⬇
```sh
cd ~ && mkdir dotfiles && cd dotfiles && curl -#L https://github.com/kevinrodbe/my-DotFiles/tarball/master | tar -xzv --strip-components 1 --exclude={.gitignore,.gitattributes,.git-ftp-ignore}
```

2.- **Edit** these files with your personal data (email, pc-name, git account, etc) ✏
+ config/.gitconfig
+ config/.zshrc
+ config/.aliases.sh
+ bash/git.sh
+ bash/phpmyadmin.sh

3.- **Run** installer 🏃
 ```sh
sh install.sh
 ```

 4.- **Restart** and enjoy it! 🙌

## Screenshot 🖼
![Desktpo 1][dsk1]
![Desktpo 2][dsk2]
![Desktpo 3][dsk3]


[dsk1]: dsk1.png "Desktop 1"
[dsk2]: dsk2.png "Desktop 2"
[dsk3]: dsk3.png "Desktop 3"
[kevinrodbe]: kevinrodbe.png "Kevinrodbe"
[web]: https://kevinrodriguez.pe
