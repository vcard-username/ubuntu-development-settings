# Ubuntu Development Settings!
### What to do after installing ubuntu?

> ### Please read!
> 1) Please check all config files. These config files are set up for my computer. Minor adjustments may be required!
> 2) I'm using **zsh(Oh My Zsh)** as a shell. Ubuntu uses *bash* as standard. If you're using *bash*, type **.bashrc** instead of **.zshrc** *and* type **bash** instead of **zsh**

## **Let's start!**
* [x] **Firs Update and Upgrade**
  * sudo apt update && sudo apt-get update
  * sudo apt upgrade && sudo apt-get upgrade
  * sudo apt autoremove && sudo apt-get autoremove
  * sudo apt autoclean && sudo apt-get autoclean
  * sudo reboot
* [ ] **Ubuntu Settings**
  * [x] Window click minimise & maximise
    * gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
  * [x] Show battery percentage
    * > true to turn *on*, false to turn *off*
    * gsettings set org.gnome.desktop.interface show-battery-percentage true
  * [x] Dock show/hide mounts(hiding disc,flash disck,HDD vs. on the docks)
    * > true to turn *on*, false to turn *off*
    * gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
* [ ] **Packages**
  * [x] **Ubuntu Packages**
    * [x] Media Codecs
      * sudo apt install ubuntu-restricted-extras libavcodec-extra libdvd-pkg ffmpeg
    * [x] Additional Archive Utilities tar, zip and unzip
      * sudo apt install rar unrar p7zip-full p7zip-rar
    * [x] Gnome Shell Extensions (System and Chrome)
      * > Install this browser extension to be able to install [Gnome Shell Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) via web browser! (for Chrome)
      * sudo apt install gnome-shell-extensions
      * sudo apt install chrome-gnome-shell
      * [Gnome Extensions](https://github.com/vcard-username/ubuntu-development-settings/tree/master/gnome "Gnome Shell Extensions")
    * [x] Curl
      * sudo apt install curl
    * [x] Gnupg
      * sudo apt-get install gnupg
    * [x] Java JDK(11)
      * sudo apt-get install openjdk-11-jdk
  * [x] **Development Packages**
    * [x] Git
      * *Install*
        * sudo add-apt-repository ppa:git-core/ppa
        * sudo apt update
        * sudo apt install git
      * *Git Global Configure*
        * git config --global user.email "your_email@example.com"
        * git config --global user.name "your_name"
    * [x] Ohmyzsh(bash)
      * [x] *Install*
        * sudo apt install zsh
        * sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
        * sudo chsh -s $(which zsh) $(whoami)
        * sudo reboot
      * [x] *Plugin*
        * PowerLine
          * sudo apt install fonts-powerline
        * Synyax Highlighting
          * git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        * Auto Suggestions
          * git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        * fzf
          * git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
        * Autoenv
          * git clone https://github.com/zpm-zsh/autoenv ~/.oh-my-zsh/custom/plugins/autoenv
      * [x] *.zshrc configure*
        * > Replace *.zshrc* content with *zshrc* content on your computer
        * [Zsh Configure](https://github.com/vcard-username/ubuntu-development-settings/blob/master/configure/zshrc "Ohmyzsh configure settings")
      * [x] *.zshrc source*
        * source .zshrc
        * sudo reboot
    * [x] Node.js
      * curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
      * sudo apt-get install -y nodejs
    * [x] MongoDB
      * wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
      * echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
      * sudo apt-get update
      * sudo apt-get install -y mongodb-org
      * echo "mongodb-org hold" | sudo dpkg --set-selections
      * echo "mongodb-org-server hold" | sudo dpkg --set-selections
      * echo "mongodb-org-shell hold" | sudo dpkg --set-selections
      * echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
      * echo "mongodb-org-tools hold" | sudo dpkg --set-selections
      * sudo systemctl start mongod
      * sudo systemctl status mongod
      * sudo systemctl enable mongod
      * sudo systemctl stop mongod
      * sudo systemctl restart mongod
    * [x] Heroku
      * sudo snap install --classic heroku
    * [x] Vercel (now sh)
      * sudo npm i -g now  
      * sudo npm i -g vercel
* [ ] **Programs**
  * [x] **Development**
    * [x] Web Browser
      * [x] Chrome
        * *Install*
          * wget -O ~/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
          * sudo apt install ./chrome.deb && sudo rm -r chrome.deb
        * [Google Extensions](https://github.com/vcard-username/ubuntu-development-settings/tree/master/chrome "Google Chrome Extensions")
      * [x] Chromium
        * sudo apt-get install chromium-browser
    * [x] IDE
      * [x] VS Code
        * *Install*
          * sudo snap install --classic code
        * [Settings and Extensions](https://github.com/vcard-username/ubuntu-development-settings/tree/master/vscode "VS Code Settings & Extensions")
      * [X] PyCharm(JetBrains)
        * sudo snap install pycharm-community --classic
      * [X] Anaconda3
        * sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
        * cd /tmp
        * curl https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh --output anaconda.sh
        * sha256sum anaconda.sh
        * zsh anaconda.sh
        * > Answer 'yes' to everything!
        * source .zshrc
        * > To remove the '(base)' text from the terminal: ```conda config --set auto_activate_base False ```

    * [x] Postman
      * sudo snap install postman
    * [x] Robomongo(Robo3t)
      * sudo snap install robo3t-snap
    * [x] Android Studio
      * sudo snap install android-studio --classic
  * [x] **Other**
    * [x] Tweak Tool
      * > You can choose any!
      * sudo apt install gnome-tweaks
      * sudo apt-get install gnome-tweak-tool
    * [x] Spotify
      * curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
      * echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
      * sudo apt-get update && sudo apt-get install spotify-client
    * [x] Skype
      * wget -O ~/skype.deb https://repo.skype.com/latest/skypeforlinux-64.deb
      * sudo apt install ./skype.deb
      * sudo rm -r skype.deb
    * [x] Gravit Designer
      * sudo snap install gravit-designer
    * [x] Inkscape
      * sudo snap install inkscape
    * [x] Safe Eyes
      * sudo add-apt-repository ppa:slgobinath/safeeyes
      * sudo apt update
      * sudo apt install safeeyes
    * [x] Redshift
      * sudo apt-get install redshift redshift-gtk
      * nano ~/.config/redshift.conf
      * [Redshift Configure](https://github.com/vcard-username/ubuntu-development-settings/blob/master/configure/redshift.conf "Readshift configure settings")
    * [x] Productivity Timer
      * sudo snap install productivity-timer --candidate
    * [x] DroidCam(Using an Android phone as a webcam)
      * > Install the [app](https://play.google.com/store/apps/details?id=com.dev47apps.droidcam) on your phone
      * sudo apt-get install gcc make
      * cd /tmp/
      * wget https://www.dev47apps.com/files/linux/droidcam_latest.zip
      * unzip droidcam_latest.zip -d droidcam && cd droidcam
      * sudo ./install
      * > Check if the new video device is available with the following command: <br> ```lsmod | grep v4l2loopback_dc```
    * [x] Speedtest(Network Speed)
      * mkdir speedtest
      * cd speedtest/
      * wget -O speedtest.tar.gz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz && tar -xvf speedtest.tar.gz
      * rm -r speedtest.tar.gz
      * cd ../
      * sudo mv speedtest /opt/
      * *Add to shell(alias)*
        * sudo nano .zshrc
        * alias speedtest='cd /opt/speedtest/ && ./speedtest'
        * source .zshrc
      * > Open terminal write *speedtest* and try: ```speedtest```
    * [x] OBS
      * sudo add-apt-repository ppa:obsproject/obs-studio
      * sudo apt update
      * sudo apt install obs-studio
    * [x] OpenShot (Video Edit)
      * sudo add-apt-repository ppa:openshot.developers/ppa
      * sudo apt-get update
      * sudo apt-get install openshot-qt
    * [x] Gimp
      * sudo snap install gimp
    * [x] Pinta
      * sudo apt-get install pinta
    * [x] Kazam
      * sudo apt install kazam
    * [x] VLC
      * sudo snap install vlc
