# Kiểm tra xem lệnh (phần mềm) cần những thư viện nào để chạy:
* ldconfig -v
vi du
which ls
ldd <path>

# Command xử lý text
** echo "Hom nay la thu 7" >>demo001.txt //Ghi chuỗi vào file

# Trích thông tin từ text
* vd
cat democat.txt 
cut -d ':' -f 1 democat.txt //option -d = định nghĩa vách ngăn; -f= định cột muốn lấy
* sed cũng tương tự cut nhưng có thể làm thay đổi file nguồn
vd: sed G democat.txt
sed '2d' democat.txt //xóa dong 2
sed '2, 8d' democat.txt  //xóa dòng 2-8
sed '$d' democat.txt //xóa dòng cuối

# Thay thế nội dung
sed 's/str can thay the/str thay the/'
vd: sed 's/unix/linux/' democat.txt  //thay từ đầu tiên của mỗi dòng
vd: sed 's/unix/linux/g' democat.txt  //thay thế hết
vd: sed 's/unix/linux/3g' democat.txt  //thay thế hết từ patent thứ 3 trên mỗi dòng
vd: sed '5 s/lp/thanhnb2/' democat.txt //thay the dong thu 7





zip -rm /root/gw/backup_gw_files/gw_files_202305xx.zip /root/gw/gw_files