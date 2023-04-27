# Tạo folder
mkdir /LPI1
mkdir /LPI1/{lecture,lab,exam}
mkdir -p mywebsite/{branches,trunk/{cgi-bin,htdocs,script},tags}
cd /LPI1/

# tạo file theo option
touch system_changes-machine{1..10}-month_{jan,feb,mar}.txt
mkdir -p /LPI1/syschanges/{jan,feb,mar}
# di chuyển
mv *_jan.txt syschanges/jan/
mv *_feb.txt syschanges/feb/
mv *_mar.txt syschanges/mar/

# Nén tập tin
tar -czvf /tmp/lpi1.tar.gz /LPI1/

# Xóa
rm -rf {jan,feb,mar}/*machine{9,10}* # Cách 01
rm -rf /LPI1/syschanges

# Tìm kiếm
find / -name *machine8* | xargs -I % sh -c 'rm %' # Cách 02
find / -name *machine6* -exec rm -f {} \; # Cách 03
find / -name *machine7* -delete # Cách 04

