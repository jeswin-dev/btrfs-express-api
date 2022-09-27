usage=$(df -h |grep /dev/xvdg | awk '{print $5}' | rev | cut -c2- | rev)
echo "$usage is usage"
echo "$usage is the current usage" >> cron.txt
if [[ $usage > '60' ]]; then
	echo "hogh usage" 
	btrfs device add -f /dev/xvdf /mnt
	echo "Added disk of 1 GB" >> cron.txt
elif [[ $usage < '20' ]]; then
	echo "Low usage"
	btrfs device delete /dev/xvdf /mnt
	echo "removed disk of 1GB" >> cron.txt
fi
