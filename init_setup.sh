#!/bin/bash
echo "______________________________________________________________________"
echo " you may want to run this as root for proper setup :::::: "
echo "______________________________________________________________________"
echo " ........ STARTING SETUP .............."
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo ":::::::: STARTING  SYSTEM UPDATE ::::::: "
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sudo apt update
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo ":::::::: SETUP VIM ::::::::"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sudo apt install vim
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo -e ":::::::: setting up respective directories ::::::::::: \n"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sleep 10
if ! mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged ~/.vim/pack/git_plugings/start/; then 
    echo "directory setup was  not  succefull int this section :::::: "
    exit 1
fi
echo -e "The directory was created succefully for this section :::: \n"
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo "--------- settup vimplug------------"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo " ::::::::: installing curl ::::::::: "
sudo apt install curl
sleep 10
echo ":::::::::  installing vimplug ::::::: \n"

if ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ; then
    echo -e "vim plug was not  intalled succefully ::::: \n";
    exit 2
fi
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo -e " ::::::::::_______setting up nodejs_________::::::::::::::::"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sleep 10
echo -e ":::::::: installing nodej "
if curl -sL https://deb.nodesource.com/setup_18.x | sudo -E  bash - ; then
    echo ":::::OPERATION WAS A SUCCESS:::::"
    sudo apt install nodejs
    sudo apt update
else
    echo -e "The installiation process was not succefull :::: \n"
fi
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo ":::::::: INSTALLING YARN ON OUR SYSTEM :::::::::::"
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sleep 10
if npm install --global yarn ; then
    echo -e "The operation was succefull\n ";
fi
sleep 10
echo "______________________________________________________________________"
echo "______________________________________________________________________"
echo -e "cloning c syntax highlight to  int the correct directories \n "
echo "______________________________________________________________________"
echo "______________________________________________________________________"
sleep 10
echo -e "Installing git \n"
sudo apt install git
if cd ~/.vim/pack/git_plugings/start/; then 
git clone --depth=1 https://github.com/bfrg/vim-cpp-modern && cd
else
    echo -e "Failed to install the syntax c and cpp systanx "
fi
sleep 10
echo -e "updating the system to make sure everything is up to date :::;  \n"
sleep 10
if sudo apt update ; then 
    echo "UPDATE SEEM TO BE SUCCEFULL ENJOY THE VIM SETUP "
    echo "existing:::::::::::::::::: "
fi
sleep 10
