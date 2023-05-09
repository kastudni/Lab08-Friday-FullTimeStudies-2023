#!/bin/bash

# Kamil Rydarowicz
if [[ $EUID -ne 0 ]]; then
   echo "Ten skrypt musi być uruchomiony jako root" 
   exit 1
fi


lsblk


read -p "Podaj nazwę dysku, na którym chcesz utworzyć partycję LVM (np. sda, sdb): " disk_name


echo -e "n\np\n\n\n\nw" | fdisk /dev/$disk_name
partprobe /dev/$disk_name


partition_name=$(ls /dev/${disk_name}* | grep -v ${disk_name}[0-9]$)

pvcreate $partition_name


vgcreate my_volume_group $partition_name


read -p "Podaj nazwę nowej partycji: " logical_partition_name
read -p "Podaj rozmiar nowej partycji w MB (np. 512): " logical_partition_size
lvcreate -L ${logical_partition_size}M -n $logical_partition_name my_volume_group


lvdisplay