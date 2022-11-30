 #!/bin/bash

backup_files="/mnt/d/deneme/home/ec2-user /mnt/d/deneme/etc /mnt/d/deneme/boot /mnt/d/deneme/usr" 
backup_destination="/mnt/d/deneme/backup"
backup_file_name=$(hostname)_$(date +"%Y-%m-%d-%I:%M_%p").tgz

echo "We will back up ${backup_files} to ${backup_destination}/${backup_file_name}"

tar czvf ${backup_destination}/${backup_file_name} ${backup_files} && echo "Your Backup is ready"

crontab <<EOF
* * * * * /mnt/d/deneme/yenicron.sh
EOF

# https://linuxhint.com/linux-tar-command     Syntax: tar [options] [tar-archive-name] [other-files-names]   Syntax: tar -xvf açılcak_dosyalar.tar (farklı dizine çıkarcaksan bu kısmıda yaz: -C /tmp/yeni_dizin  
# https://wiki.ubuntu-tr.net/index.php?title=Tar_komutu_kullan%C4%B1m%C4%B1
# https://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux/
# https://www.howtogeek.com/746532/how-to-launch-cron-automatically-in-wsl-on-windows-10-and-11/#:~:text=Right%2Dclick%20the%20task%20and,say%20that%20cron%20is%20running.
# https://www.mshowto.org/crontab-kullanimi-ve-crontab-ornekleri.html