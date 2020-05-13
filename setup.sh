# !/bin/bash
# Adapted from Soma Mizobuchi (smizobuc)'s setup.sh script
PROMPT="[SETUP]"

# This function creates symlinks btn rc files in dotfiles and in root directory
link (){
    echo "$PROMPT would like to symlink files from this folder to your root"
    echo "$PROMPT proceed? (enter y/Y if yes)"
    read resp
    if [ $resp == "y" ] || [ $resp == "Y" ]
    then
        for file in $(ls -A | grep -f .include); do
            echo "Creating symlink to $file"
            ln -s "$PWD/$file" "$HOME/$file"
        done
        echo "$PROMPT symlink complete"
    else
        echo "$PROMPT symlink cancelled"
        return 1
    fi
}

# Vundle is a vim package manager
installVundle (){
	echo "$PROMPT would like to install Vundle"
    echo "$PROMPT proceed? (enter y/Y if yes)"
	read resp
	if [ $resp == "y" ] || [ $resp =="Y" ]
	then
        # Checks to see if Vundle already installed
        if [ -d "$HOME/.vim/bundle/Vundle.vim" ]
        then
            echo "Vundle.vim installed already"
        else
		    git clone https://github.com/VundleVim/Vundle.vim.git \
                ~/.vim/bundle/Vundle.vim
        fi
		echo "$PROMPT install complete"
	else
		echo "$PROMPT install failed"
		return 1
	fi
}


# Only for ubuntu systems
#packages (){
    #sudo apt update && sudo apt full-upgrade
    
    # gcc, g++, make, etc.
    #sudo apt install build-essential cmake unzip pkg-config
    #sudo apt-get install manpages-dev
    
    # Python stuff
    #sudo apt-get install python3
    #sudo apt-get install python3-pip
    #sudo pip3 install numpy scipy matplotlib ipython jupyter pandas sympy nose
    
    # VLC: 16.04 LTS or higher
    #sudo snap install vlc
    
    # Git
    #sudo apt-get install git
    
    # tmux
    #sudo apt install tmux
    
    # Firefox
    #sudo apt install firefox
    
    # LaTeX
    #sudo apt-get install texlive-latex-base
    #sudo apt-get install texlive-fonts-recommended
    #sudo apt-get install texlive-fonts-extra
    #sudo apt-get install texlive-latex-extra
    
    # X2GO: For remote sessions
    #sudo apt-get install x2goclient
    
    # Jekyll, for static site management
    #sudo apt-get install ruby-full build-essential zlib1g-dev
    #gem install jekyll bundler
    
    # ROS kinetic
    # accept software from packages.ros.org
    #sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
    #sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
    # full install of ROS kineteic
    #sudo apt-get install ros-kinetic-desktop-full
    #echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
    #source ~/.bashrc
    #sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool
    #sudo rosdep init
    #rosdep update
#}

link
installVundle
#packages
