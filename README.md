<h1 align="center">
	<img width="120" src="http://i.imgur.com/jj0eFTb.png" alt="kevinrodbe's dotfiles">
  <br>
</h1>

# [Kevinrodbe's][web] dotfiles ✌
My personal dotfiles and configuration for **Ubuntu**.
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

2.- **Edit** these files with your personal data (email, pc-name, git account, etc) and replace them in your pc ✏
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

## Terminal's Features
Don't forget to **copy** `config/kevinrodbe.zsh-theme` into `~/.oh-my-zsh/themes` folder

* Current working folder
* Git branch
* Git status
  * `💯` —— Clean branch
  * `🔥` —— Dirty branch
  * `+`  —— Added files
  * `-`  —— Deleted files
  * `*`  —— Modified files
  * `>`  —— Renamed files
  * `=`  —— Unmerged changes
  * `?`  —— Untracked changes

## Screenshots 🖼
![Desktop 1][dsk1]
![Desktop 2][dsk2]
![Desktop 3][dsk3]


[dsk1]: dsk1.png "Desktop 1"
[dsk2]: dsk2.png "Desktop 2"
[dsk3]: dsk3.png "Desktop 3"
[kevinrodbe]: kevinrodbe.png "Kevinrodbe"
[web]: https://kevinrodriguez.pe
