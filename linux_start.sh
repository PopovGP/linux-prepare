#!/bin/sh
ACTIONS=(update dist-upgrade update-kernel reboot q)
select choice in ${ACTIONS[@]}; do
	case $choice in
		update) 
			apt-get update
			echo "apt-get update"
			;;
		dist-upgrade)
			apt-get dist-upgrade
			echo "apt-get dist-upgrade"
			;;
		update-kernel)
			update-kernel
			echo $REPLY "kernel-update"
			;;
		q)
			break
			;;
		reboot)
			reboot
			;;
		*)
			echo "Wrong choice"
			;;
	esac
done
echo "Script ended"
