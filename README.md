# Yazılım Geliştiriciler İçin UBUNTU!
Ubuntu'da yaptığım kurulumlar ve ayarlamalar, yazılım geliştirme ve günlük kullanım içindir. Yüklenen bazı programlar ve yapılan bazı ayarlar güncel olmayabilir. Bunun için konu başlıklarına gerekli linkleri koyacağım. Bu linklere giderek programların veya ayarlarların/konfigürasyonların güncel halini kullanabilirsiniz.

## English Version
- Click this [link](README-EN.md) for English language version.

## Başlamadan Önce
- Bu kaynak, Ubuntu işletim sisteminin 20.04+ sürümü için ayarlanmıştır. Daha düşük Ubuntu sürümlerinde geçerli olmayabilir veya hatalar alabilirsiniz.
  - Ubuntu sürümünüzü öğrenmek için `lsb_release -a ` komutunu kullanabilirsiniz.
- Lütfen [config](tr/config) klasöründeki konfigürasyon dosyalarını uygulamadan önce kontrol edin. Bu konfigürasyonlar benim şahsi bilgisayarım için ayarlandı. Kendi bilgisayarınıza göre minik birkaç değişiklikler yapmanız gerekebilir.

## Notlar
- Ben shell olarak [Oh My Zsh](https://ohmyz.sh/) kullanıyorum. Ubuntu standart olarak _bash_ kullanır. Eğer **_bash_** shell kullanıyorsanız ayarlarınızı _.bashrc_ dosyasına, **_zsh(ohmyzsh)_** shell kullanıyorsanız ayarlarınızı _.zshrc_ dosyanıza yapınız.
  - > Shell ayarlarınıza ulaşmak için `gedit ~/.zshrc` veya `nano ~/.zshrc` komutunu kullanabilirsiniz.   

# İlerleyiş - TODO
* [x] Güncelleştirme ve Yükseltme
* [x] Uygulamalar & Programlar & Paketler
  * [x] Sistem(Ubuntu)
  * [x] Yazılım Geliştirme
  * [x] Resim & Video
  * [x] Genel Kullanım
* [x] Ayarlar
  * [x] Sistem(Ubuntu) Ayarları
* [x] Problem Giderme & BUG Fixleme

# Güncelleştirme ve Yükseltme
Ubuntu kurulumu yaptıktan sonra bazı güncelleştirmeler yapmamız gerekebilir. Bu komutları kullanarak kurulum sonrası güncellemeleri yapabilirsiniz.
- `sudo apt update && sudo apt-get update`
- `sudo apt upgrade && sudo apt-get upgrade`
- `sudo apt autoremove && sudo apt-get autoremove`
- `sudo apt autoclean && sudo apt-get autoclean`

# Uygulamalar & Programlar & Paketler
## Sistem(Ubuntu)
* [x] Medya kodekleri (Media Codecs)
  - `sudo apt install ubuntu-restricted-extras libavcodec-extra libdvd-pkg ffmpeg`
* [x] Yardımcı arşiv programları (tar, zip, unzip vs.)
  - `sudo apt install rar unrar p7zip-full p7zip-rar`
* [x] [Curl](https://curl.se/)
  * `sudo apt install curl`
* [x] [Gnupg](https://gnupg.org/)
  * `sudo apt-get install gnupg`
* [x] [Flatpak](https://flatpak.org/setup/Ubuntu/)
  * `sudo add-apt-repository ppa:alexlarsson/flatpak`
  * `sudo apt update`
  * `sudo apt install flatpak`
  * `sudo apt install gnome-software-plugin-flatpak`
  * `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
  * `sudo reboot`
* [x] [Gnome Shell Extensions](https://extensions.gnome.org/)
  * `sudo apt install gnome-shell-extensions`
  * `sudo apt install chrome-gnome-shell`
  * > Gnome uzantılarını Google Chrome tarayıcısı üzerinden yükleyebilmek için [GNOME Kabuk bütünleşmesi (Gnome Shell Integration)](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) eklentisini kurun.
  * > Benim kullandığım Gnome uzantılarına [bu](tr/app/gnome/GNOME_EXTENSIONS.md) linkten ulaşabilirsiniz.

## Yazılım Geliştirme
* [x] [Git](https://git-scm.com/)
  * [x] Yükleme 
    * `sudo add-apt-repository ppa:git-core/ppa`
    * `sudo apt update`
    * `sudo apt install git`
  * [x] Yapılandırma 
    * `git config --global user.email "<email_adresi>"`
      * > Örn: `git config --global user.email "tolunaydev@gmail.com"`
    * `git config --global user.name "<isim>"`
      * > Örn: `git config --global user.name "Tolunay Emre Cavdar"` 
  * [x] GitHub SSH Anahtarı Ekleme (GitHub SSH Key)
    * `ssh-keygen -t rsa -b 4096 -C "<email>"`
      * > Örn: `ssh-keygen -t rsa -b 4096 -C "tolunaydev@gmail.com"`
      * Bu adımdan ise bize SSH anatarını nereye oluşturacağını ve isminin ne olacağını soracak. Burada yol belirtiyoruz ve SSH anahtarımızın ismini giriyoruz.
      * `/home/<PC_İSMİ>/.ssh/<SSH_İSMİ>`
        * > Örn: `/home/tec/.ssh/github`
      * Sonrasında bizden bir şifre isteyecek. Bu şifre, SSH kullanmamız için oluşturduğumuz şifredir. Şifrenizi yazdıktan sonra devam ediyoruz.
    * `eval ssh-agent -s`
    * `ssh-add ~/.ssh/<SSH_İSMİ>`
      * Yukarıda oluşturduğumuz SSH'ı kaydediyoruz.
        * > Örn: `ssh-add ~/.ssh/github`
    * `cat ~/.ssh/<SSH_İSMİ>.pub`
      * > Örn: `cat ~/.ssh/github.pub`
      * Bu komuttuan sonra size bir çıktı verecektir. Bu çıktı bir köşede dursun. Bunu GitHub'a bağlamak için kullanacağımız bir TOKEN veya bir anahtar(key) olarak düşünebilirsiniz.
    * [Bu](https://github.com/settings/keys) linke giderek "New SSH Key" butonuna tıklayın. (Settings>SSH and GPG keys)
      * Açılan penceredeki "Title" kısmına SSH Key için bir başlık giriyoruz.
      * "Key" bölümüne ise yukarıda _cat_ ile çıktı aldığımız (`cat ~/.ssh/<SSH_İSMİ>.pub`) tüm verileri kopyalayıp buraya yapışltırıyoruz. _ssh-rsa_ ile başlayıp _e-mail adresinizle_ bitmesi gerekiyor.
      * "Add SSH Key" butonuna tıklıyoruz. Artık SSH anahtarımızı GitHub hesabımıza bağladık. Sadece bağladığımız SSH'ı bilgisayarımızda onaylamamız gerekiyor yani local ile GitHub bağlantısını sağlamak.Bunun için tekrar terminali açıyor ve kodumuzu giriyoruz.
    * `ssh -T git@github.com`
    * Artık GitHub'a SSH ile bağlısınız!
* [x] [Ohmyzsh](https://ohmyz.sh/)
  * [x] Yükleme
    * `sudo apt install zsh`
    * `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`
    * `sudo chsh -s $(which zsh) $(whoami)`
    * `sudo reboot`
  * [x] Eklentiler (plugin)
    * _ohmyzsh_ için kullandığım tüm eklentilere [buradan](tr/app/ohmyzsh/OHMYZSH_PLUGIN.md) ulaşabilirsiniz.
  * [x] Ohmyzsh Konfigürasyon
    * > Konfigürasyonları yapmakdan önce mutlaka yukarıdaki [eklentileri](tr/app/ohmyzsh/OHMYZSH_PLUGIN.md) kurmanız gerek. eklentileri kurduktan sonra bu adıma geçiniz aksi takdirde hata alacaksınız.
    * _.zshrc_ ayarlarına [buradan](tr/config/ohmyzsh/.zshrc) ulaşabilirsiniz. Nasıl konfigürasyon yapacağınızı [buradan](tr/config/ohmyzsh/OHMYZSH_CONFIG.md) öğrenebilirsiniz.
* [x] [Postman](https://www.postman.com/downloads/)
  * `sudo snap install postman`
* [x] [Robo3t(Robomongo)](https://robomongo.org/)
  * `sudo snap install robo3t-snap`
* [x] [Android Studio](https://developer.android.com/studio)
  * `sudo snap install android-studio --classic`
* [x] [FileZilla](https://filezilla-project.org/)
  * `sudo apt-get install filezilla`
* [x] [Node.js](https://github.com/nodesource/distributions/blob/master/README.md)
  * İstediğiniz herhangi bir versiyonu kurabilirsiniz.
  * _Node.js v14.x_
    * `curl -fsSL https://deb.nodesource.com/setup_14.x |  sudo -E bash -`
    * `sudo apt-get install -y nodejs`
  * _Node.js v12.x_
    * `curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -`
    * `sudo apt-get install -y nodejs`
  * _Node.js v10.x_
    * `curl -fsSL https://deb.nodesource.com/setup_10.x | sudo -E bash -`
    * `sudo apt-get install -y nodejs`
  * Yarn Yükleme
    * `curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`
    * `echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`
    * `sudo apt-get update && sudo apt-get install yarn`
* [x] [PostgreSQL](https://www.postgresql.org/download/linux/ubuntu/)
  * [x] Yükleme
    * `sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'`
    * `wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -`
    * `sudo apt-get update`
    * Eğer `i386` bu kodu içeren bir hata alıyorsanız aşağıdaki adımları izleyiniz.
      * `sudo gedit /etc/apt/sources.list.d/pgdg.list`
      * Bu satırı silin: `deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main`
      * Bu satırı ekleyin: `deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main`
      * Kaydedin ve kapatın.
    * `sudo apt-get -y install postgresql postgresql-contrib`
    * `sudo systemctl is-active postgresql`
    * > Çıktının bu olması gerek: `active`
    * `sudo systemctl status postgresql`
    * > Çıktının bu olması gerek: `active service ...`
    * `sudo pg_isready`
    * > Çıktının bu olması gerek: `accepting`
  * [x] Veritabanı(db) ve Kullanıcı(user) Oluşturmak
    * `sudo su - postgres`
    * `psql`
    * `CREATE USER <kullanıcı_adı> WITH PASSWORD '<şifre>';`
      * > Örn: `CREATE USER tolunay WITH PASSWORD '123456';`
    * `CREATE DATABASE <db_ismi>;`
      * > Örn: `CREATE DATABASE denemedb;`
    * `GRANT ALL PRIVILEGES ON DATABASE <db_ismi> to <kullanıcı_adı>;`
      * > Örn: `GRANT ALL PRIVILEGES ON DATABASE denemedb to tolunay;`
    * `\q`
    * `exit`
* [x] [pgAdmin4](https://www.pgadmin.org/download/pgadmin-4-apt/)
  * `curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add`
  * `sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'`
  * `sudo apt install pgadmin4`
* [x] [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
  * `wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -`
  * `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list`
  * `sudo apt-get update`
  * `sudo apt-get install -y mongodb-org`
  * `echo "mongodb-org hold" | sudo dpkg --set-selections`
  * `echo "mongodb-org-server hold" | sudo dpkg --set-selections`
  * `echo "mongodb-org-shell hold" | sudo dpkg --set-selections`
  * `echo "mongodb-org-mongos hold" | sudo dpkg --set-selections`
  * `echo "mongodb-org-tools hold" | sudo dpkg --set-selections`
  * `ps --no-headers -o comm 1`
  * `sudo systemctl start mongod`
  * `sudo systemctl status mongod`
  * `sudo systemctl enable mongod`
  * `sudo systemctl stop mongod`
  * `sudo systemctl restart mongod`
* [x] [Figma](https://www.figma.com/)
  * `sudo snap install figma-linux`
* [x] Kod Editörleri (IDE)
  * [x] [VS Code](https://code.visualstudio.com/download)
    * [x] Yükleme
      * `sudo snap install --classic code`
    * [x] Ayarlar & Eklentiler
      * Settings Sync ile ayarları otomatik uygulama
        * VSCode editörünüze [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) eklentisini kurun.
        * Sonrasında sizden bir _GistID_'si isteyecek. Aşağıda yazan _GistID_ kodunu girerek tüm ayarları ve eklentileri otomatik olarak yükleyebilirsiniz.  
        * GistID: `YAKINDA EKLENECEK`
      * Manuel olarak ayarları uygulama
        * [Bu](tr/config/vscode/VSCODE_CONFIG.md) linke giderek VSCode ayarlarına ulaşabilirsiniz.
        * [Bu](tr/app/vscode/VSCODE_EXTENSIONS.md) linke giderek VSCode eklentilere ulaşabilirsiniz.
  * [x] [WebStorm](https://www.jetbrains.com/webstorm)
    * `sudo snap install webstorm --classic`
  * [x] [PhpStorm](https://www.jetbrains.com/phpstorm)
    * `sudo snap install phpstorm --classic`
  * [x] [PyCharm](https://www.jetbrains.com/pycharm)
    * `sudo snap install pycharm-professional --classic`
  * [x] [GoLang](https://www.jetbrains.com/golang)
    * `sudo snap install goland --classic`
  * [x] [Anaconda3](https://docs.anaconda.com/anaconda/install/linux/)
    * `sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6`
    * `cd /tmp`
    * `curl https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh --output anaconda.sh`
    * `sha256sum anaconda.sh`
    * `zsh anaconda.sh`
    * > Her soruya "yes" cevabını veriyoruz.
    * `source .zshrc`
* [x] Bulut Depolama & Deploy
  * [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
    * `sudo snap install --classic heroku`
  * [Vercel (now sh)](https://vercel.com/)
    * `sudo npm i -g now vercel`

## Resim & Video
* [x] Resim Editleme
  * [Gravit Designer](https://www.designer.io/en/download/)
    * `sudo snap install gravit-designer`
  * [Inkscape](https://inkscape.org/release/inkscape-1.0.2/gnulinux/ubuntu/ppa/dl/)
    * `sudo add-apt-repository ppa:inkscape.dev/stable`
    * `sudo apt update`
    * `sudo apt install inkscape`
  * [Pinta](https://www.pinta-project.com/howto/installing-pinta)
    * `sudo add-apt-repository ppa:pinta-maintainers/pinta-stable`
    * `sudo apt-get update`
    * `sudo apt-get install pinta`
  * [Gimp](https://www.gimp.org/)
    * `flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref`
    * `flatpak run org.gimp.GIMP//stable`
    * `flatpak update`
* [X] Video Editleme 
  * [Kdenlive](https://kdenlive.org/en/download/)
    * `sudo add-apt-repository ppa:kdenlive/kdenlive-stable`
    * `sudo apt update`
    * `sudo apt install kdenlive`
  * [Shotcut](https://shotcut.org/download)
    * `sudo snap install shotcut --classic`
  * [OpenShot](https://www.openshot.org/en/ppa/)
    * `sudo add-apt-repository ppa:openshot.developers/ppa`
    * `sudo apt-get update`
    * `sudo apt-get install openshot-qt`
* [x] Ekran Görüntüsü Kaydetme & SS(ScreenShot) Alma
  * [OBS](https://obsproject.com/wiki/install-instructions#linux)
    * `sudo add-apt-repository ppa:obsproject/obs-studio`
    * `sudo apt update`
    * `sudo apt install obs-studio`
  * [Kazam](https://launchpad.net/kazam)
    * `sudo apt install kazam`
  * [Flameshot](https://snapcraft.io/flameshot)
    * `sudo snap install flameshot`

## Genel Kullanım
* [x] WEB Tarayıcıları
  * [x] [Chrome](https://www.google.com/chrome/)
    * [x] Yükleme
      * `wget -O ~/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`
      * Dosyayı indirdiğiniz klasöre gidin.
      * `sudo apt install ./chrome.deb && sudo rm -r chrome.deb`
    * [x] Chrome Eklentileri
      * [Bu](tr/app/chrome/CHROME_EXTENSIONS.md) linke giderek Google Chrome üzerinde kullandığım eklentileri yükleyebilirsiniz.
  * [x] [Chromium](https://www.chromium.org/)
    * `sudo apt install -y chromium-browser`
  * [x] [Opera](https://www.opera.com)
    * `sudo snap install opera`
* [x] [Typora (Markdown Editörü)](https://typora.io/#linux)
  * `wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -`
  * `sudo add-apt-repository 'deb https://typora.io/linux ./'`
  * `sudo apt-get update`
  * `sudo apt-get install typora`
* [x] [VLC](https://www.videolan.org/vlc/download-ubuntu.html)
  * `sudo snap install vlc`
* [x] Gnome Tweak Tool
    * `sudo apt install gnome-tweaks`
    * Eğer hata alırsanız veya yükleyemezseniz aşağıdaki kodu deneyin.
    * `sudo apt-get install gnome-tweak-tool`
* [x] [Spotify](https://www.spotify.com/tr/download/linux/)
  * `sudo snap install spotify`
* [x] [Skype](https://www.skype.com/tr/get-skype/)
  * `sudo snap install skype --classic`
* [x] [Pomatez (Pomodoro)](https://snapcraft.io/pomatez)
  * `sudo snap install pomatez`
* [x] [Breaktimer](https://snapcraft.io/install/breaktimer/ubuntu)
  * `sudo snap install breaktimer`
* [x] [Speedtest(İnternet Hız Testi)](https://www.speedtest.net/apps/cli)
  * `mkdir speedtest`
  * `cd speedtest/`
  * `wget -O speedtest.tar.gz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x_64-linux.tgz && tar -xvf speedtest.tar.gz`
  * `rm -r speedtest.tar.gz`
  * `cd ../`
  * `sudo mv speedtest /opt/`

# Ayarlar
## Sistem(Ubuntu) Ayarları
* [x] Batarya Yüzdesini Göstertmek
  * Batarya yüzdesini göstermek için kullanılır.
  * `gsettings set org.gnome.desktop.interface show-battery-percentage true`
* [x] Harici Diskleri(HDD, flasdisk) Görev Çubuğunda Gösterme
  * Harici olarak bağladığınız diskleri görev çubuğunda göstertmek için kullanılır.
  * `gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true`

# Problem Giderme & BUG Fixleme
* [x] Görev Çubuğunda Uygulama Penceresini Küçültme & Büyütme
  * Ubuntu'da görev çubuğundaki(dock) açık olan bir uygulamaya tıkladığımız zaman uygulama penceresi küçültmek ve büyütmek için kullanılır.
  * `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
* [x] NVIDIA Treaking(Görüntü Kırılması) Problemi
  * Ubunsu sisteminizde Nvidia ekran kartı varsa görüntü kırılmasını düzeltmek için kullanılır.
  * `sudo gedit /etc/modprobe.d/nvidia-drm-nomodeset.conf`
    * Açılan dosyaya aşağıdaki kodu ekliyoruz. Kaydedip dosyayı kapatıyoruz. 
    * `options nvidia-drm modeset=1`
  * Bilgisayarı yeniden başlatıyoruz
    * `sudo reboot`
  * Bilgisayar açıldıktan sonra aşağıdaki kodları sırasıyla giriyoruz.
    * `sudo update-initramfs -u`
    * `sudo cat /sys/module/nvidia_drm/parameters/modeset`
    * > Çıktı olarak "Y" vermesi gerekiyor.
  * Değişikliklerin işlenmesi için son kez bilgisayarımızı yeniden başlatıyoruz.
    * `sudo reboot`
* [x] Terminalden 'base' Yazısınız kaldırmak
  * _Conda_ yüklediğimizden dolayı terminalimizi açtığımızda "(_base_)" şeklinde bir yazı götebiliriz. Bunu yazıyı kaldırmak için aşağıdaki ayarı yapabilirsiniz
  * `conda config --set auto_activate_base False`