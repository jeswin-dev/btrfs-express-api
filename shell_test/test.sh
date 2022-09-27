#!/bin/bash
i=1
while :
	do
		sleep 0.2s
		touch /mnt/file$i.txt
		echo -e "This is file number $i \n" >> /mnt/file$i.txt
		lsblk >> /mnt/file$i.txt
		echo -e "\n \n" >> /mnt/file$i.txt
		df -h >> /mnt/file$i.txt
		echo "created file number $i in disk. Operation running"
		
		if [ $((i%100)) -eq 0 ]; then
			head -c 100MB /dev/urandom > /mnt/bigFile$i.txt
			md5sum /mnt/bigFile$i.txt >> /mnt/file$i.txt
			echo "created big file at i = $i"
		fi
		((i=i+1))
	done
