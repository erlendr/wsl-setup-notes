# wsl-setup-notes
Notes for installing WSL

1. Install WSL

2. Update packages:
```bash
$ sudo apt-get update
$ sudo apt-get upgrade
```

3. Install zsh:

```bash
sudo apt-get install zsh
```

4. Set zsh as default shell:

```bash
chsh -s $(which zsh)
```

5. Install oh-my-zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

6. Install powerline fonts: https://github.com/powerline/fonts:

Clone repo:
```bash
$ git clone https://github.com/powerline/fonts.git
```

Run install script located in the root of the repo via Powershell:
```powershell
.\install.ps1
```

8. Change ZSH Theme to agnoster

```bash
$ vim ~/.zshrc
```

```
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
```

9. Fix ls colours:

Download Solarized Color Theme from https://github.com/seebi/dircolors-solarized
```bash
$ curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
```

```
#Change ls colours
eval `dircolors ~/.dircolors`
```

10. Sett opp wsl.conf:

```bash
$ vim /etc/wsl.conf
```

```
[interop]
appendWindowsPath = false
```

# Windows Terminal setup

## settings.json

1. Add Cascadia Code PL fontFace and Tango Dark colorScheme:

```json
"fontFace": "Cascadia Code PL",
"colorScheme": "Tango Dark"
```

## VSCode setup

Press Ctrl+Shift+P then enter "select default shell" to access the Terminal default shell configuration and select "WSL Bash".

![](https://msdnshared.blob.core.windows.net/media/2018/04/clip_image011_thumb7.png)
