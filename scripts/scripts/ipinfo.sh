#!/bin/sh

ipinfo=$(curl -sf "https://ipinfo.io/json")

ip_info(){
echo "*"
}

ip_show() {
if [ -n "$ipinfo" ]; then
    ipinfo_ip=$(echo "$ipinfo" | jq -r '.ip')
    ipinfo_country=$(echo "$ipinfo" | jq -r '.country')

fi


	echo $ipinfo_ip
}

ip_hide(){
	echo " "
}

case "$1" in
	--show) ip_show ;;
	--hide) ip_hide ;;
	*) ip_info ;;
esac
