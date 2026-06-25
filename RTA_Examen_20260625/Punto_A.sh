sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -n lv_docker -L 5M vg_datos
sudo lvcreate -n lv_workareas -L 1.5G vg_datos
sudo lvcreate -n lv_swap -L 512M vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
echo 'UUID=d2ecfb85-5965-44ef-a271-cdf39edd7ee4  /var/lib/docker  ext4  defaults  0  2' | sudo tee -a /etc/fstab
echo 'UUID=b27418f6-52f1-4c8a-b77a-ce31240bd0a3  /work  ext4  defaults  0  2' | sudo tee -a /etc/fstab
echo 'UUID=b02ccabc-489d-4d58-a1bf-1f1e389f99fc  none  swap  sw  0  0' | sudo tee -a /etc/fstab
sudo mount -a
sudo swapon -a
sudo systemctl restart docker
sudo systemctl status docker
