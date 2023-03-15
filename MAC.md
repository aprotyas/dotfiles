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
Run `brew bundle` with the bundle files in `bundlefiles/`. If you do not want every
package installed, go through and manually install the ones you want. Any
instance of `brew <xxx>` will be replaced with `brew install <xxx>`, and any
instance of `cask <xxx>` will be replaced with `brew install cask <xxx>`.  

### Other  
Don't forget to configure git, SSH keys, and GPG keys.
