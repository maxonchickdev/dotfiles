# dotfiles

Dotfiles by maxondev

# Steps to bootstrap a new mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory

```zsh
# Use SSH (if set up...)
git clone git@github.com:maxonchickdev/dotfiles.git

# Use HTTPS
git clone https://github.com/maxonchickdev/dotfiles.git
```

3. Create symlinks in the Home directory to the real file in the repo

```zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
```

4. Install zsh

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/.zshrc
```

4. Install Homebrew, followed by the software listed in the Brewfile

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file ~/Brewfile
```

5. Setup mac os settings

```zsh
chmod +x ./os.sh
sudo ./os.sh
```
