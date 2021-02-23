### *All the settings I made after installing Ubuntu*

> #### Please read before you start
> 1. These settings are made according to Ubuntu 20.04. It can lead to errors in 18 or 16 versions.
> 2. Please check all __config__ files. These config files are set up for my computer. Minor adjustments may be required!
> 3. I'm using __zsh(Oh My Zsh)__ as a shell. Ubuntu uses ___bash___ as standard. If you're using ___bash___, type *.bashrc* instead of *.zshrc*, else you're using ***zsh(ohmyzsh)***, type *.zshrc* instead of *.bashrc*

## **Let's start!**

* [x] **Firs Update and Upgrade**
  * ```sudo apt update && sudo apt-get update```
  * ```sudo apt upgrade && sudo apt-get upgrade```
  * ```sudo apt autoremove && sudo apt-get autoremove```
  * ```sudo apt autoclean && sudo apt-get autoclean```
  * ```sudo reboot```
* [x] **Ubuntu Settings**
  * [x] Window click minimise & maximise
    * ```gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'```
  * [x] Show/Hide battery percentage
    * > to show *true*, to hide *false*
    * ```gsettings set org.gnome.desktop.interface show-battery-percentage true```
  * [x] Dock show/hide mounts(disc,flash disck,HDD etc. on the dock)
    * > to show *true*, to hide *false*
    * ```gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true```
  * [x] Ubuntu NVIDIA treaking problems
    * ```sudo gedit /etc/modprobe.d/nvidia-drm-nomodeset.conf```
    * >Add text and save
      * ```options nvidia-drm modeset=1```
    * ```sudo reboot```
    * ```sudo update-initramfs -u```
    * ```sudo cat /sys/module/nvidia_drm/parameters/modeset```
    * > output should be "Y"
* [x] **Packages**
  * [x] **Ubuntu Packages**
    * [x] Media Codecs
      * ```sudo apt install ubuntu-restricted-extras libavcodec-extra libdvd-pkg ffmpeg```
    * [x] Additional Archive Utilities tar, zip and unzip
      * ```sudo apt install rar unrar p7zip-full p7zip-rar```
    * [x] Gnome Shell Extensions (System and Chrome Browser)
      * > Install this browser extension to be able to install [Gnome Shell Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) via web browser! (for Chrome)
      * ```sudo apt install gnome-shell-extensions```
      * ```sudo apt install chrome-gnome-shell```
      * _Gnome Shell Extensions_
        * [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
        * [Open Weather](https://extensions.gnome.org/extension/750/openweather/)
        * [Emoji Selector](https://extensions.gnome.org/extension/1162/emoji-selector/)
        * [Coverflow Alt-Tab](https://extensions.gnome.org/extension/97/coverflow-alt-tab/)
        * [Todo.txt](https://extensions.gnome.org/extension/570/todotxt/)
    * [x] [Flatpak](https://flatpak.org/setup/Ubuntu/)
      * ```sudo add-apt-repository ppa:alexlarsson/flatpak```
      * ```sudo apt update```
      * ```sudo apt install flatpak```
      * ```sudo apt install gnome-software-plugin-flatpak```
      * ```flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo```
      * ```sudo reboot```
    * [x] [Curl](https://curl.se/)
      * ```sudo apt install curl```
    * [x] [Gnupg](https://gnupg.org/)
      * ```sudo apt-get install gnupg```
  * [x] **Development Packages**
    * [x] [Git](https://git-scm.com/)
      * *Install*
        * ```sudo add-apt-repository ppa:git-core/ppa```
        * ```sudo apt update```
        * ```sudo apt install git```
      * *Git Global Configure*
        * ```git config --global user.email "<your_email@example.com>"""```
        * ```git config --global user.name "<your_name>"```
      * *GitHub SSH*
        * ```ssh-keygen -t rsa -b 4096 -C "<YOUR_GITHUB_EMAIL>"```
          * > __Enter file in which to save the key:__ ```/home/<PC_NAME>/.ssh/<CREATE_SSH_NAME>```
            * SAMPLE: ```/home/wod/.ssh/github```
            * YOU HAVE TO SPECIFY THE FILE LOCATION! (/home/...)
          * > Enter passphrase: ```<SSH_PASSWORD>```
        * ```eval ssh-agent -s```
        * ```ssh-add ~/.ssh/<SSH_NAME>```
        * ```cat ~/.ssh/<SSH_NAME>.pub```
        * > Copy to output
        * > Add '.pub' to output with cat.
        * Go to: https://github.com/settings/keys
        * Click to "New SSH key"
          * __Title__: A title you want.
          * __Key__: The key you copied.
            * > ```cat ~/.ssh/<SSH_NAME>.pub```
        * Add SSH key
        * ```ssh -T git@github.com```
    * [x] [Ohmyzsh](https://ohmyz.sh/)
      * [x] *Install*
        * ```sudo apt install zsh```
        * ```sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"```
        * ```sudo chsh -s $(which zsh) $(whoami)```
        * ```sudo reboot```
      * [x] *Plugin*
        * [Powerlevel10k](https://github.com/romkatv/powerlevel10k.git)
          * ```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```
          * > If you want to see only the name of the folder you are in, follow the steps below.
            * ```sudo gedit ~/.p10k.zsh```
            * SEARCH: ```POWERLEVEL9K_SHORTEN_STRATEGY```
              * CHANGE VALUE: ```truncate_to_last```
            * SEARCH: ```POWERLEVEL9K_DIR_MAX_LENGTH```
              * CHANGE VALUE: ```1```
        * [PowerLine](https://github.com/powerline/fonts)
          * ```sudo apt-get install fonts-powerline```
        * [Synyax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
          * ```git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting```
        * [Auto Suggestions](https://github.com/zsh-users/zsh-autosuggestions)
          * ```git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions```
        * [fzf](https://github.com/junegunn/fzf.git)
          * ```git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install```
        * [Autoenv](https://github.com/zpm-zsh/autoenv)
          * ```git clone https://github.com/zpm-zsh/autoenv ~/.oh-my-zsh/custom/plugins/autoenv```
      * [x] *.zshrc configure*
        * > Reminder: Some of the contents in these settings are made according to my computer. Please have a look at the file first.
        * [Zsh Configure (.zshrc)](https://github.com/vcard-username/ubuntu-development-settings/blob/master/config/zshrc "Ohmyzsh configure settings")
      * [x] *.zshrc source*
        * ```source .zshrc```
        * ```sudo reboot```
    * [x] [Node.js](https://github.com/nodesource/distributions/blob/master/README.md "Nodejs install")
      * _Node.js v14.x_
        * ```curl -fsSL https://deb.nodesource.com/setup_14.x |  sudo -E bash -```
        * ```sudo apt-get install -y nodejs```
      * _Node.js v12.x_
        * ```curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -```
        * ```sudo apt-get install -y nodejs```
      * _Node.js v10.x_
        * ```curl -fsSL https://deb.nodesource.com/setup_10.x | sudo -E bash -```
        * ```sudo apt-get install -y nodejs```
      * _Yarn İnstall_
        * ```curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -```
        * ```echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list```
        * ```sudo apt-get update && sudo apt-get install yarn```
    * [x] _[PostgreSQL](https://www.postgresql.org/download/linux/ubuntu/)_
      * ```sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'```
      * ```wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -```
      * ```sudo apt-get update```
      * > if there is such an error : ```i386```
        * ```sudo gedit /etc/apt/sources.list.d/pgdg.list```
        * Delete this : ```deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main```
        * Add this : ```deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main```
      * ```sudo apt-get -y install postgresql postgresql-contrib```
      * ```sudo systemctl is-active postgresql```
      * > Output: ```active```
      * ```sudo systemctl status postgresql```
      * > Output: ```active service ...```
      * ```sudo pg_isready```
      * > Output: ```accepting```
      * _Created DB and USER_
        * ```sudo su - postgres```
        * ```psql```
        * ```CREATE USER <user> WITH PASSWORD '<password>';```
        * ```CREATE DATABASE <db_name>;```
        * ```GRANT ALL PRIVILEGES ON DATABASE tecdb to tec;```
        * ```\q```
        * ```exit```
      * _[pgAdmin4 Install](https://www.pgadmin.org/download/pgadmin-4-apt/)_
        * ```curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add```
        * ```sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'```
        * ```sudo apt install pgadmin4```  
    * [x] [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/ "MongoDB install")
      * ```wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -```
      * ```echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list```
      * ```sudo apt-get update```
      * ```sudo apt-get install -y mongodb-org```
      * ```echo "mongodb-org hold" | sudo dpkg --set-selections```
      * ```echo "mongodb-org-server hold" | sudo dpkg --set-selections```
      * ```echo "mongodb-org-shell hold" | sudo dpkg --set-selections```
      * ```echo "mongodb-org-mongos hold" | sudo dpkg --set-selections```
      * ```echo "mongodb-org-tools hold" | sudo dpkg --set-selections```
      * ```ps --no-headers -o comm 1```
      * ```sudo systemctl start mongod```
      * ```sudo systemctl status mongod```
      * ```sudo systemctl enable mongod```
      * ```sudo systemctl stop mongod```
      * ```sudo systemctl restart mongod```
    * [x] Deployments
      * [x] _[Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli "Heroku CLI install")_
        * ```sudo snap install --classic heroku```
      * [x] _[Vercel (now sh)](https://vercel.com/ "Vecel")_
        * ```sudo npm i -g now vercel```
* [x] **Programs**
  * [x] Web Browser
    * [x] _[Chrome](https://www.google.com/chrome/ "Google Chrome")_
      * *Install*
        * ```wget -O ~/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb```
        * ```sudo apt install ./chrome.deb && sudo rm -r chrome.deb```
      * _Google Extensions_
        * [x] Development
          * [Vue.js Dev Tools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
          * [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
          * [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)
          * [Angular devtools](https://chrome.google.com/webstore/detail/angular-devtools/fabgmfdedgcofflfcnhdpljllcpaplfa)
          * [ng-inspector for AngularJS](https://chrome.google.com/webstore/detail/ng-inspector-for-angularj/aadgmnobpdmgmigaicncghmmoeflnamj)
          * [Postman Interceptor](https://chrome.google.com/webstore/detail/postman-interceptor/aicmkgpgakddgnaphhhpliifpcfhicfo)
          * [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/aimiinbnnkboelefkjlenlgimcabobli)
          * [User JavaScript and CSS](https://chrome.google.com/webstore/detail/user-javascript-and-css/nbhcbdghjpllgmfilhnhkllmkecfmpld)
          * [JavaScript and CSS Code Beautifier](https://chrome.google.com/webstore/detail/javascript-and-css-code-b/iiglodndmmefofehaibmaignglbpdald)
          * [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp)
          * [Quick color picker](https://chrome.google.com/webstore/detail/quick-color-picker/medhnjegdfgmhpammlpfokdacikkdpjj)
          * [WhatFont?](https://chrome.google.com/webstore/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm)
          * [Responsive Tester](https://chrome.google.com/webstore/detail/responsive-tester/ppbjpbekhmnekpphljbmeafemfiolbki)
          * [Responsive Web Design Tester](https://chrome.google.com/webstore/detail/responsive-web-design-tes/enhcpefphhaiikpobimgcakinhabgiib)
          * [Check My Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf)
          * [SimilarWeb - Traffic Rank & Website Analysis](https://chrome.google.com/webstore/detail/similarweb-traffic-rank-w/hoklmmgfnpapgjgcpechhaamimifchmp)
          * [Selenium](https://chrome.google.com/webstore/detail/selenium-ide/mooikfkahbdckldjjndioackbalphokd)
          * [Daily](https://chrome.google.com/webstore/detail/daily-20-source-for-busy/jlmpjdjjbgclbocgajdjefcidcncaied)
        * [x] Other
          * [ZenMate (VPN)](https://chrome.google.com/webstore/detail/zenmate-free-vpn%E2%80%93best-vpn/fdcgdnkidjaadafnichfpabhfomcebme)
          * [Adblock Plus](https://chrome.google.com/webstore/detail/adblock-plus-free-ad-bloc/cfhdojbkjhnklbpkdaibdccddilifddb) or [AdBlock](https://chrome.google.com/webstore/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom)
          * [Checker Plus for Gmail](https://chrome.google.com/webstore/detail/checker-plus-for-gmail/oeopbcgkkoapgobdbedcemjljbihmemj)
          * [Gnome Extensions](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep/related)
          * [Full Page Screen Capture](https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl)
          * [Lightshot](https://chrome.google.com/webstore/detail/lightshot-screenshot-tool/mbniclmhobmnbdlbpiphghaielnnpgdp)
          * [MeasureIt!](https://chrome.google.com/webstore/detail/measureit/keoagpbljgpdoldcmfpgicnpijmfompi)
    * [x] _[Chromium](https://www.chromium.org/)_
      * ```sudo apt install -y chromium-browser```
    * [x] _[Opera](https://www.opera.com)_
      * ```sudo snap install opera```
  * [x] IDE
    * [x] _[VS Code](https://code.visualstudio.com/download)_
      * *Install*
        * ```sudo snap install --classic code```
      * _Settings and Extensions_
        * Install the _[Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)_ extension on VS Code to synchronize the settings.
        * > GistID: ```109ed292858a1fe6f13280168b901096```
    * [x] _[WebStorm](https://www.jetbrains.com/webstorm)_
      * ```sudo snap install webstorm --classic```
    * [x] _[PhpStorm](https://www.jetbrains.com/phpstorm)_
      * ```sudo snap install phpstorm --classic```
    * [x] _[PyCharm](https://www.jetbrains.com/pycharm)_
      * ```sudo snap install pycharm-professional --classic```
    * [x] _[GoLang](https://www.jetbrains.com/golang)_
      * ```sudo snap install goland --classic```
    * [x] _[Anaconda3](https://docs.anaconda.com/anaconda/install/linux/)_
      * ```sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6```
      * ```cd /tmp```
      * ```curl https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh --output anaconda.sh```
      * ```sha256sum anaconda.sh```
      * ```zsh anaconda.sh```
      * > Answer 'yes' to everything!
      * ```source .zshrc```
      * > To remove the '(base)' text from the terminal: ```conda config --set auto_activate_base False```
  * [x] [Postman](https://www.postman.com/downloads/)
    * ```sudo snap install postman```
  * [x] [Robo3t(Robomongo)](https://robomongo.org/)
    * ```sudo snap install robo3t-snap```
  * [x] [Android Studio](https://developer.android.com/studio)
    * ```sudo snap install android-studio --classic```
  * [x] [FileZilla](https://filezilla-project.org/)
    * ```sudo apt-get install filezilla```
  * [x] [Typora (Markdown Editor)](https://typora.io/#linux)
    * ```wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -```
    * ```sudo add-apt-repository 'deb https://typora.io/linux ./'```
    * ```sudo apt-get update```
    * ```sudo apt-get install typora```
  * [x] Graphic Design & Video Edit
    * [Figma](https://www.figma.com/)
      * ```sudo snap install figma-linux```
    * [Gravit Designer](https://www.designer.io/en/download/)
      * ```sudo snap install gravit-designer```
    * [Inkscape](https://inkscape.org/release/inkscape-1.0.2/gnulinux/ubuntu/ppa/dl/)
      * ```sudo add-apt-repository ppa:inkscape.dev/stable```
      * ```sudo apt update```
      * ```sudo apt install inkscape```
    * [Pinta](https://www.pinta-project.com/howto/installing-pinta)
      * ```sudo add-apt-repository ppa:pinta-maintainers/pinta-stable```
      * ```sudo apt-get update```
      * ```sudo apt-get install pinta```
    * [Gimp](https://www.gimp.org/)
      * ```flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref```
      * ```flatpak run org.gimp.GIMP//stable```
      * ```flatpak update```
    * [Kdenlive](https://kdenlive.org/en/download/)
      * ```sudo add-apt-repository ppa:kdenlive/kdenlive-stable```
      * ```sudo apt update```
      * ```sudo apt install kdenlive```
    * [Shotcut](https://shotcut.org/download)
      * ```sudo snap install shotcut --classic```
    * [OpenShot](https://www.openshot.org/en/ppa/)
      * ```sudo add-apt-repository ppa:openshot.developers/ppa```
      * ```sudo apt-get update```
      * ```sudo apt-get install openshot-qt```
  * [x] Screen Record & Screenshot
    * [OBS](https://obsproject.com/wiki/install-instructions#linux)
      * ```sudo apt install ffmpeg```
      * ```sudo add-apt-repository ppa:obsproject/obs-studio```
      * ```sudo apt update```
      * ```sudo apt install obs-studio```
    * Kazam
      * sudo apt install kazam
    * [Flameshot](https://snapcraft.io/flameshot)
      * ```sudo snap install flameshot```
  * [x] [VLC](https://www.videolan.org/vlc/download-ubuntu.html)
    * ```sudo snap install vlc```
  * [x] Tweak Tool
    * ```sudo apt install gnome-tweaks```
    * or
    * ```sudo apt-get install gnome-tweak-tool```
  * [x] [Spotify](https://www.spotify.com/tr/download/linux/)
    * ```sudo snap install spotify```
  * [x] [Skype](https://www.skype.com/tr/get-skype/)
    * ```sudo snap install skype --classic```
  * [x] [Pomatez (Pomodoro)](https://snapcraft.io/pomatez)
    * ```sudo snap install pomatez```
  * [x] [Breaktimer](https://snapcraft.io/install/breaktimer/ubuntu)
    * ```sudo snap install breaktimer```
  * [x] [Speedtest(Network Speed)](https://www.speedtest.net/apps/cli)
    * ```mkdir speedtest```
    * ```cd speedtest/```
    * ```wget -O speedtest.tar.gz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz && tar -xvf speedtest.tar.gz```
    * ```rm -r speedtest.tar.gz```
    * ```cd ../```
    * ```sudo mv speedtest /opt/```
  * [x] Hide Top Bar
    * ```sudo apt update```
    * ```sudo apt install gnome-shell-extension-autohidetopbar```
    * Make the "ALT+F2" combination
    * Type ```r``` and hit enter!
