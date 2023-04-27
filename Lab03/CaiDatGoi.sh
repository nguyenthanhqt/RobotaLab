# SSH command:
ssh user@ip -p port

# Install VMware tool
# For Centos:
yum install -y open-vm-tools
yum update -y

# Install lshw + lspci command
yum install -y lshw

# Install lsusb command
yum install -y usbutils

# For Ubuntu
apt install -y open-vm-tools
apt upgrade -y