# wsl-setup-notes
Notes for installing WSL

1. Install WSL (needs reboot):
Powershell:
```powershell
$ Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
$ Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing
$ Add-AppxPackage .\Ubuntu.appx
```

Start the Ubuntu-app manually...

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

5. Install Cisco Umbrella CA:
```bash
sudo ./install-umbrella-ca.sh
```

6. Install oh-my-zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

7. Install powerline fonts: https://github.com/powerline/fonts

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

8. Fix ls colours:

```bash
$ vim ~/.zshrc
```

```
#Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS

#Make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
```

9. Sett opp wsl.conf:

```bash
$ vim /etc/wsl.conf
```

```
[interop]
appendWindowsPath = false
```

# Hyper.js setup

`.hyper.js` in Windows home folder:

```javascript
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: '"Terminess Powerline", "Anonymice Powerline", "Roboto Mono for Powerline", "Meslo LG S for Powerline", "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    // make sure to use a full path if the binary name doesn't work
    // (e.g `C:\\Windows\\System32\\bash.exe` instead of just `bash.exe`)
    // if you're using powershell, make sure to remove the `--login` below
    shell: 'C:\\Windows\\System32\\wsl.exe',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: [],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: true

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    "tab:new": "ctrl+t",
    "pane:splitVertical": "ctrl+d",
    "pane:splitHorizontal": "ctrl+e",
    "pane:close": "ctrl+w",
    "editor:undo": "ctrl+z",
    "editor:redo": "ctrl+y",
    "editor:cut": "ctrl+x",
    "editor:copy": "ctrl+c",
    "editor:paste": "ctrl+v",
    "editor:selectAll": "ctrl+a"
  }
};

```

## VSCode setup

Press Ctrl+Shift+P then enter "select default shell" to access the Terminal default shell configuration and select "WSL Bash".

![](https://msdnshared.blob.core.windows.net/media/2018/04/clip_image011_thumb7.png)
