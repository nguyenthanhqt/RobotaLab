#Me nu
#!/bin/bash
#mainMenu=$(Home abaout contact login quit)
declare -A menu=(
  ["1"] = "Tao tai khoan"
  ["2"] = "Health check"
  ["3"] =  "Shutdown"
  ["4"] = "Reboot"
  ["5"] =  "Quit"
    )
select a in "${menu[@]}"
do 
    echo $a${menu[$a]} 

case $a in 
1)
    echo "Ban dang chon chuc nang so $a"
    ;;

2)
    echo "Ban dang chon chuc nang so $a"
    ;;
*)
    echo "chuc nang khong hop le"
    ;;
echo $mainMenu

asac
done
#Xử lý dòng (line by line)
#!/bin/bash
i=1
echo "$(fdisk -l)" | while read -r line
do 
    echo $line
    $i=$i+1
    echo $i
done


echo "$(fdisk -l)" | while read -r line
do 
    xư ly
done

while IFS= read -r line
do 
    xư ly
done < "File name"


while read -r line
do 
    xư ly
done < "File name"