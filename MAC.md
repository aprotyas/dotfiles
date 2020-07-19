## Setting up a new Mac  

### Basic setup  
This involves installing the "command-line tools" and [HomeBrew](https://brew.sh/).  

#### Command-line tools
```bash
xcode-select --install
sudo xcodebuild -license
```

#### HomeBrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```  

#### Brew installs  
Run `brew bundle` with the provided `Bundlefile`. If you do not want every
package installed, go through and manually install the ones you want. Any
instance of `brew <xxx>` will be replaced with `brew install <xxx>`, and any
instance of `cask <xxx>` will be replaced with `brew install cask <xxx>`.  

### Other  

#### iTerm2  
iTerm2 should be installed by the bundle command from before. Set Hack Nerd Font
as the default font.  
[iTerm2 cheat sheet](https://gist.github.com/wilsonmar/d2d00c3d54ffc36a05e29d2a695f5b3a)  

#### SSH Key  
Security:
```bash
ssh-keygen  
#enter PW  
pbcopy < ~/.ssh/id_rsa.pub
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

Add the following to `.ssh/config`:
```
Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa
```  

#### Git  
Set `git config --global user.name` and `git config --global user.email`.  
To ensure git output is colored: `git config --global color.ui auto`  
To display original state in a conflict: `git config --global merge.conflictsyle diff3`  
Furthermore, remember to create a pair of GPG keys and put it on Github.
[Here](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
 is how.  
Remember to modify the global gitconfig with the appropriate user.signingkey,
gpg.program, and commit.gpgsign.  
