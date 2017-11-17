# install samba
yum install samba samba-client samba-swat

# start samba
/etc/init.d/smb start

# change passwd
smbpasswd -a ${smbUserName}
