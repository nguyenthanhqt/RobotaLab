#!/bin/bash
echo "Nhap vao o cung muon kiem tra: "
read hdd
echo "=================================THONG TIN DIA CUNG $hdd ========================================="
echo
DateTime=$(date "ngay "%d" thang "%m---%Y)
echo "Kiem tra : $DateTime"
hddinfo=$(fdisk -l | grep /dev/sda | head -n 1 | awk -F: '{print $2}')
patitions=$(fdisk -l | grep $hdd | tail -n +2 | awk '{print $1}')
echo "O cung $hdd co dung luong: $hddinfo ."
echo "Cac phan vung o cung \n: $patitions " 

pationsInfo=$(fdisk -l | grep $hdd | tail -n +2)
for i in $pationsInfo
    do 
        pname=$(awk 'print $1' $i)
        pfortmat=`awk 'print $6' $i`
        echo "phan vung $pname co dinh dang la:  $pfortmat"
    done
infosize=$hddinfo | awk -F /dev/sda 
#BienA=`ssh abc@$dmz01 docker ps --no-trunc | grep agent | awk -F @ '{printf $2}' | awk '{printf $1}'`


