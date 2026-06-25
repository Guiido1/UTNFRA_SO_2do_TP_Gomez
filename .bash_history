whoami
lsblk
sudo apt-get install lvm2 -y
sudo pvcreate /dev/sdc
sudo pvcreate /dev/sdd
sudo pvs
ido@Parcial:/home/vagrant$ sudo pvs
sudo vgs
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sdd
sudo vgs
cd
ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls -l
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc 
ls -l
git clone https://github.com/Guiido1/UTNFRA_SO_2do_TP_Gomez.git
mv RTA_Examen_20260625/ UTNFRA_SO_2do_TP_Gomez/
cd UTNFRA_SO_2do_TP_Gomez/
ls -l
history -a
lsblk
sudo fdisk /dev/sdc
sudo wipefs -a /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdd
sudo fdisk /dev/sdd
Guido@Pc-Guido MINGW64 ~/Desktop/Arquitectura y Sistemas/UTN-FRA_SO_Vagrant/VagrantFiles/Parcial_ayso (master)
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Cloning VM...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/jammy64' version '20241002.0.0' is up to date...
==> default: Setting the name of the VM: Parcial
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
==> default: Forwarding ports...
==> default: Configuring storage mediums...
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
vagrant@Parcial:~$ sudo apt update
sudo apt install ca-certificates curl
Package docker-ce is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source
E: Package 'docker-ce' has no installation candidate
E: Unable to locate package docker-ce-cli
E: Unable to locate package containerd.io
E: Couldn't find any package by glob 'containerd.io'
E: Unable to locate package docker-buildx-plugin
E: Unable to locate package docker-compose-plugin
vagrant@Parcial:~$ sudo apt-get remove docker docker-engine docker.io containerd runc -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package docker-engine
vagrant@Parcial:~$ sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
0% [Connecting to security.ubuntu.com] [Connecting to ppa.launchpad.net]
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:5 http://ppa.launchpad.net/ansible/ansible/ubuntu jammy InRelease
Reading package lists... Done
vagrant@Parcial:~$
vagrant@Parcial:~$ echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list
deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu jammy stable
vagrant@Parcial:~$ cat /etc/apt/sources.list.d/docker.list
deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu jammy stable
vagrant@Parcial:~$ sudo apt-get update
Get:1 https://download.docker.com/linux/ubuntu jammy InRelease [48.5 kB]-plugin docker-compose-plugin -y
Err:1 https://download.docker.com/linux/ubuntu jammy InRelease
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7EA0A9C3F273FCD8
Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:6 http://ppa.launchpad.net/ansible/ansible/ubuntu jammy InRelease
Reading package lists... Done
W: GPG error: https://download.docker.com/linux/ubuntu jammy InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7EA0A9C3F273FCD8
E: The repository 'https://download.docker.com/linux/ubuntu jammy InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
vagrant@Parcial:~$ docker --version
Command 'docker' not found, but can be installed with:
snap install docker         # version 29.3.1, or
apt  install docker.io      # version 29.1.3-0ubuntu3~22.04.2
apt  install podman-docker  # version 3.4.4+ds1-1ubuntu1.22.04.3
See 'snap info docker' for additional versions.
vagrant@Parcial:~$ sudo systemctl status docker
Unit docker.service could not be found.
vagrant@Parcial:~$ sudo systemctl start docker
Failed to start docker.service: Unit docker.service not found.
vagrant@Parcial:~$ cat /etc/apt/keyrings/docker.asc
cat: /etc/apt/keyrings/docker.asc: No such file or directory
vagrant@Parcial:~$ sudo rm -f /etc/apt/keyrings/docker.asc
vagrant@Parcial:~$ sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
Jun 25 09:28:51 Parcial dockerd[6215]: time="2026-06-25T09:28:51.877456932Z" level=info msg="Restoring containers: start."
Jun 25 09:28:51 Parcial dockerd[6215]: time="2026-06-25T09:28:51.915887233Z" level=info msg="Deleting nftables IPv4 rules" error="running nft: /dev/stdin:1:17-30: Error: Could not process rule: No such file or directory\ndelete table ip docker-bridges\n        >
Jun 25 09:28:51 Parcial dockerd[6215]: time="2026-06-25T09:28:51.936568054Z" level=info msg="Deleting nftables IPv6 rules" error="running nft: /dev/stdin:1:18-31: Error: Could not process rule: No such file or directory\ndelete table ip6 docker-bridges\n       >
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.338043697Z" level=info msg="Loading containers: done."
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.349686994Z" level=info msg="Docker daemon" commit=70eaf5e containerd-snapshotter=true storage-driver=overlayfs version=29.6.0
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.349966659Z" level=info msg="Initializing buildkit"
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.822772636Z" level=info msg="Completed buildkit initialization"
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.832783005Z" level=info msg="Daemon has completed initialization"
Jun 25 09:28:52 Parcial dockerd[6215]: time="2026-06-25T09:28:52.833134946Z" level=info msg="API listen on /run/docker.sock"
Jun 25 09:28:52 Parcial systemd[1]: Started Docker Application Container Engine.
vagrant@Parcial:~$ sudo useradd gomez
vagrant@Parcial:~$ su gomez
Password:
su: Authentication failure
vagrant@Parcial:~$ su vagrant
Password:
vagrant@Parcial:~$ sudo adduser gomez
adduser: The user `gomez' already exists.
vagrant@Parcial:~$ sudo adduser guido
Adding user `guido' ...
Adding new group `guido' (1003) ...
Adding new user `guido' (1003) with group `guido' ...
Creating home directory `/home/guido' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for guido
Enter the new value, or press ENTER for the default
        Full Name []:
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] Y
vagrant@Parcial:~$ sudo usermod -aG sudo guido
vagrant@Parcial:~$ su guido
Password:
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

guido@Parcial:/home/vagrant$ whoami
guido
guido@Parcial:/home/vagrant$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 48.4M  1 loop /snap/snapd/26382
loop1    7:1    0 63.8M  1 loop /snap/core20/2717
loop2    7:2    0 91.7M  1 loop /snap/lxd/38469
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0    2G  0 disk
sdd      8:48   0    1G  0 disk
guido@Parcial:/home/vagrant$ sudo apt-get install lvm2 -y
[sudo] password for guido:
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
lvm2 is already the newest version (2.03.11-2.1ubuntu5).
lvm2 set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 79 not upgraded.
guido@Parcial:/home/vagrant$ sudo pvcreate /dev/sdc
  Physical volume "/dev/sdc" successfully created.
guido@Parcial:/home/vagrant$ sudo pvcreate /dev/sdd
  Physical volume "/dev/sdd" successfully created.
guido@Parcial:/home/vagrant$
guido@Parcial:/home/vagrant$ sudo pvs
  PV         VG Fmt  Attr PSize PFree
  /dev/sdc      lvm2 ---  2.00g 2.00g
  /dev/sdd      lvm2 ---  1.00g 1.00g
guido@Parcial:/home/vagrant$ ido@Parcial:/home/vagrant$ sudo pvs
bash: ido@Parcial:/home/vagrant$: Permission denied
guido@Parcial:/home/vagrant$   PV         VG Fmt  Attr PSize PFree
  /dev/sdc      lvm2 ---  2.00g 2.00g
  /dev/sdd      lvm2 ---  1.00g 1.00g
PV: command not found
guido@Parcial:/home/vagrant$   /dev/sdc      lvm2 ---  2.00g 2.00g
bash: /dev/sdc: Permission denied
guido@Parcial:/home/vagrant$   /dev/sdd      lvm2 ---  1.00g 1.00g
bash: /dev/sdd: Permission denied
guido@Parcial:/home/vagrant$ sudo vgs
guido@Parcial:/home/vagrant$ sudo vgcreate vg_datos /dev/sdc
  Volume group "vg_datos" successfully created
guido@Parcial:/home/vagrant$ sudo vgcreate vg_temp /dev/sdd
  Volume group "vg_temp" successfully created
guido@Parcial:/home/vagrant$ sudo vgs
  VG       #PV #LV #SN Attr   VSize    VFree
  vg_datos   1   0   0 wz--n-   <2.00g   <2.00g
  vg_temp    1   0   0 wz--n- 1020.00m 1020.00m
guido@Parcial:/home/vagrant$ cd
guido@Parcial:~$ ls -l
total 0
guido@Parcial:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
Cloning into 'UTN-FRA_SO_Examenes'...
remote: Enumerating objects: 844, done.
remote: Counting objects: 100% (71/71), done.
remote: Compressing objects: 100% (54/54), done.
remote: Total 844 (delta 28), reused 51 (delta 14), pack-reused 773 (from 1)
Receiving objects: 100% (844/844), 2.07 MiB | 2.41 MiB/s, done.
Resolving deltas: 100% (348/348), done.
guido@Parcial:~$ ls -l
total 4
drwxrwxr-x 16 guido guido 4096 Jun 25 09:39 UTN-FRA_SO_Examenes
guido@Parcial:~$ ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh

Por favor ejecute: source  ~/.bashrc  && history -a

guido@Parcial:~$ source ~/.bashrc
guido@Parcial:~$ ls -l
total 8
drwxrwxr-x  2 guido guido 4096 Jun 25 09:39 RTA_Examen_20260625
drwxrwxr-x 16 guido guido 4096 Jun 25 09:39 UTN-FRA_SO_Examenes
guido@Parcial:~$ git clone https://github.com/Guiido1/UTNFRA_SO_2do_TP_Gomez.git
Cloning into 'UTNFRA_SO_2do_TP_Gomez'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (3/3), done.
guido@Parcial:~$ mv RTA_Examen_20260625/ UTNFRA_SO_2do_TP_Gomez/
guido@Parcial:~$ cd UTNFRA_SO_2do_TP_Gomez/
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ ls -l
total 8
-rw-rw-r-- 1 guido guido   24 Jun 25 09:41 README.md
drwxrwxr-x 2 guido guido 4096 Jun 25 09:39 RTA_Examen_20260625
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ history -a
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 48.4M  1 loop /snap/snapd/26382
loop1    7:1    0 63.8M  1 loop /snap/core20/2717
loop2    7:2    0 91.7M  1 loop /snap/lxd/38469
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0    2G  0 disk
sdd      8:48   0    1G  0 disk
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ sudo fdisk /dev/sdc

Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

The device contains 'LVM2_member' signature and it will be removed by a write command. See fdisk(8) man page and --wipe option for more details.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0x1d9c7ad8.

Command (m for help): sudo wipefs -a /dev/sdc
Created a new partition 1 of type 'Linux native' and of size 2 GiB.
Created a new partition 2 of type 'Linux swap' and of size 47.1 MiB.
Created a new partition 3 of type 'Whole disk' and of size 2 GiB.
Created a new Sun disklabel.
The device contains 'LVM2_member' signature and it will be removed by a write command. See fdisk(8) man page and --wipe option for more details.

Command (m for help): w

Guido@Pc-Guido MINGW64 ~/Desktop/Arquitectura y Sistemas/UTN-FRA_SO_Vagrant/VagrantFiles/Parcial_ayso (master)
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Cloning VM...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/jammy64' version '20241002.0.0' is up to date...
==> default: Setting the name of the VM: Parcial
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
    default: Adapter 2: hostonly
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Configuring storage mediums...
    default: Disk 'disco_parcial' not found in guest. Creating and attaching disk to guest...
    default: Disk 'disco_parcial2' not found in guest. Creating and attaching disk to guest...
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection aborted. Retrying...
    default: Warning: Connection reset. Retrying...
    default:
$ vagrant up
qq
ls
cd
ls -l
ansible --versioon
ansible --version
ls -l
ls
cd
ls -l
cd UTNFRA_SO_2do_TP_Gomez/
ls -l
lsblk
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -n lv_docker -L 5M vg_datos
sudo lvcreate -n lv_workareas -L 1.5G vg_datos
sudo lvcreate -n lv_swap -L 512M vg_temp
Guido@Pc-Guido MINGW64 ~/Desktop/Arquitectura y Sistemas/UTN-FRA_SO_Vagrant/VagrantFiles/Parcial_ayso (master)
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'ubuntu/jammy64' version '20241002.0.0' is up to date...
==> default: Clearing any previously set forwarded ports...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
==> default: Forwarding ports...
==> default: Configuring storage mediums...
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
==> default: Setting hostname...
==> default: Configuring and enabling network interfaces...
==> default: Mounting shared folders...
==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> default: flag to force provisioning. Provisioners marked to run always will still run.
Guido@Pc-Guido MINGW64 ~/Desktop/Arquitectura y Sistemas/UTN-FRA_SO_Vagrant/VagrantFiles/Parcial_ayso (master)
$ vagrant ssh
Welcome to Ubuntu 22.04.5 LTS (GNU/Linux 5.15.0-173-generic x86_64)
Expanded Security Maintenance for Applications is not enabled.
85 updates can be applied immediately.
72 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable
2 additional security updates can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
New release '24.04.4 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
cd
cd UTNFRA_SO_2do_TP_Gomez/
ls -l
sudo pvs
sudo lvs
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
udo mount /dev/vg_datos/lv_workareas /work
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
df -h | grep -E "work|docker"
swapon --show
sudo blkid /dev/vg_datos/lv_docker /dev/vg_datos/lv_workareas /dev/vg_temp/lv_swap
echo 'UUID=d2ecfb85-5965-44ef-a271-cdf39edd7ee4  /var/lib/docker  ext4  defaults  0  2' | sudo tee -a /etc/fstab
echo 'UUID=b27418f6-52f1-4c8a-b77a-ce31240bd0a3  /work  ext4  defaults  0  2' | sudo tee -a /etc/fstab
echo 'UUID=b02ccabc-489d-4d58-a1bf-1f1e389f99fc  none  swap  sw  0  0' | sudo tee -a /etc/fstab
tail -n 5 /etc/fstab
sudo mount -a
sudo swapon -a
sudo systemctl restart docker
sudo systemctl status docker
sudo reboot
cd
cd UTNFRA_SO_2do_TP_Gomez/
df -h | grep -E "work|docker"
swapon --show
sudo systemctl status docker
history | grep -E "fdisk|pvcreate|vgcreate|lvcreate|mkfs|mkswap|mkdir -p /work|mount|swapon|tee -a /etc/fstab|systemctl restart docker"
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
cd
ls -l
cd UTNFRA_SO_2do_TP_Gomez/
sudo vim ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
cd
cd UTNFRA_SO_2do_TP_Gomez/
df -h | grep -E "work|docker"
swapon --show
cd RTA_Examen_20260625/
sudo vim Punto_A.sh
cd ..
git add .
git commit -m "ADD: Agrego Punto_A.sh"
git status
git push
cd RTA_Examen_20260625/
sudo vim Punto_A.sh
cd .. 
git add .
git commit -m "ADD: Agrego Punto_A.sh"
git push
git config --global user.email "guidoguillermogomez1@gmail.com"
git config --global user.name "Guiido1"
git status
git add .
git status
git commit -m "ADD: Agrego Punto_A.sh"
git push
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim /usr/local/bin/GomezAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/GomezAltaUser-Groups.sh
sudo /usr/local/bin/GomezAltaUser-Groups.sh guido  ~/UTNFRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /usr/local/bin/GomezAltaUser-Groups.sh
cat -A /usr/local/bin/GomezAltaUser-Groups.sh | head -10
sudo sed -i 's/\r$//' /usr/local/bin/GomezAltaUser-Groups.sh
sudo bash -x /usr/local/bin/GomezAltaUser-Groups.sh guido ~/UTNFRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
find ~ -iname "Lista_Usuarios.txt" 2>/dev/null
sudo /usr/local/bin/GomezAltaUser-Groups.sh guido ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/group | grep -E "2P_GDesa|2P_GTest|2PSupervisores"
cat /etc/passwd | grep "2P_"
ls -la /work/
cp /usr/local/bin/GomezAltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/Punto_B.sh
cp /usr/local/bin/GomezAltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/GomezAltaUser-Groups.sh
history -a
cd ~/UTNFRA_SO_2do_TP_Gomez
cp ~/.bash_history .
git add .
git commit -m "ADD: Resuelvo Punto B - Alta de usuarios y grupos"
git push
git status
cp ~/.bash_history .
git add .
git status
git commit -m "ADD: Resuelvo Punto B - Alta de usuarios y grupos"
git push
ls -la ~/UTN-FRA_SO_Examenes/202406/docker/
cat ~/UTN-FRA_SO_Examenes/202406/docker/index.html
vim ~/UTN-FRA_SO_Examenes/202406/docker/index.html
sed -i 's/Tu-Nombre Tu-Apellido/Guido Gomez/; s/Tu-Division/116/' ~/UTN-FRA_SO_Examenes/202406/docker/index.html
cat ~/UTN-FRA_SO_Examenes/202406/docker/index.html
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim Dockerfile
cat Dockerfile
sudo docker build -t web1-gomez .
sudo docker login -u guidogomez
sudo docker tag web1-gomez guidogomez/web1-gomez
sudo docker push guidogomez/web1-gomez
d ~/UTN-FRA_SO_Examenes/202406/docker/
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim run.sh
chmod +x run.sh
./run.sh
curl localhost:8080
cd ~/UTNFRA_SO_2do_TP_Gomez
sudo pvcreate /dev/sdc1
Welcome to Ubuntu 22.04.5 LTS (GNU/Linux 5.15.0-173-generic x86_64)
sudo pvcreate /dev/sdc1
To see these additional updates run: apt list --upgradable
2 additional security updates can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
New release '24.04.4 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
Last login: Thu Jun 25 10:44:26 2026 from 10.0.2.2
vagrant@Parcial:~$ su guido
Password:
guido@Parcial:/home/vagrant$ cd
guido@Parcial:~$ cd UTNFRA_SO_2do_TP_Gomez/
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ df -h | grep -E "work|docker"
/dev/mapper/vg_datos-lv_workareas  1.5G   24K  1.4G   1% /work
/dev/mapper/vg_datos-lv_docker     3.5M  232K  2.8M   8% /var/lib/docker
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ swapon --show
NAME      TYPE      SIZE USED PRIO
/dev/dm-2 partition 512M   0B   -2
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ cd RTA_Examen_20260625/
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625$ sudo vim Punto_A.sh
[sudo] password for guido:
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625$ cd ..
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ git add .
guido@Parcial:~/UTNFRA_SO_2do_TP_Gomez$ git commit -m "ADD: Agrego Punto_A.sh"
Author identity unknown
*** Please tell me who you are.
Run
to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: empty ident name (for <guido@Parcial>) not allowed








clear
clear
cd
cd UTNFRA_SO_2do_TP_Gomez/
ls - l
cd
cd UTNFRA_SO_2do_TP_Gomez/
ls - l
mkdir -p RTA_Examen_20260625/docker
cp ~/UTN-FRA_SO_Examenes/202406/docker/Dockerfile RTA_Examen_20260625/docker/
cp ~/UTN-FRA_SO_Examenes/202406/docker/run.sh RTA_Examen_20260625/docker/
cp ~/UTN-FRA_SO_Examenes/202406/docker/index.html RTA_Examen_20260625/docker/
ls -la RTA_Examen_20260625/docker/
vim RTA_Examen_20260625/Punto_C.sh
cat RTA_Examen_20260625/Punto_C.sh
history -a
cp ~/.bash_history .
git add .
git commit -m "ADD: Resuelvo Punto C - Docker"
git push
ls -la ~/UTN-FRA_SO_Examenes/202406/ansible/
cat ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
find ~/UTN-FRA_SO_Examenes/202406/ansible/roles -type f
cat ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
find ~/UTN-FRA_SO_Examenes/202406/ansible/roles -type f
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/vars/main.yml
mkdir -p ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
pwd
mkdir -p ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cat << 'EOF' > ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
---
# tasks file for 2do_parcial

- name: Crear directorio alumno
  file:
    path: /tmp/2do_parcial/alumno
    state: directory
    mode: '0755'

- name: Crear directorio equipo
  file:
    path: /tmp/2do_parcial/equipo
    state: directory
    mode: '0755'

- name: Generar archivo datos_alumno.txt
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: Generar archivo datos_equipo.txt
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

- name: Configurar sudoers sin password para grupo 2PSupervisores
  copy:
    content: "%2PSupervisores ALL=(ALL) NOPASSWD: ALL\n"
    dest: /etc/sudoers.d/2PSupervisores
    mode: '0440'
    validate: 'visudo -cf %s'
EOF

cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
sudo ansible-playbook -i inventory/ playbook.yml --connection=local
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
cat /etc/sudoers.d/2PSupervisores
sudo cat /etc/sudoers.d/2PSupervisores
cat << 'EOF' > ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
sudo ansible-playbook -i inventory/ playbook.yml --connection=local
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores
EOF

mkdir -p ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/ansible
cp -r ~/UTN-FRA_SO_Examenes/202406/ansible/roles ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/ansible/
cp ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml ~/UTNFRA_SO_2do_TP_Gomez/RTA_Examen_20260625/ansible/
cd ~/UTNFRA_SO_2do_TP_Gomez
history -a
cp ~/.bash_history .
git add .
git commit -m "ADD: Resuelvo Punto D - Ansible"
git status
cd ~/UTNFRA_SO_2do_TP_Gomez
history -a
cp ~/.bash_history .
git add .
git status
git commit -m "ADD: Resuelvo Punto D - Ansible"
git push
cd ~/UTNFRA_SO_2do_TP_Gomez
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_Gomez/
history -a
