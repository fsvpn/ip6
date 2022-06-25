#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear

echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
DOMAIN=$(cat /etc/xray/domain)
MYIP=$(curl -s ipinfo.io/ip )
CITY=$(curl -s ipinfo.io/city )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
tram=$( free -m | awk 'NR==2 {print $2}' )
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INFORMASI VPS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " ❇️$bd ISP Name          ${color1} •${color3}$bd $ISP"
echo -e " ❇️$bd City              ${color1} •${color3}$bd $CITY"
echo -e " ❇️$bd Total RAM         ${color1} •${color3}$bd $tram MB"
echo -e " ❇️$bd IP VPS            ${color1} •${color3}$bd $MYIP"
echo -e " ❇️$bd DOMAIN VPS        ${color1} •${color3}$bd $DOMAIN"
echo -e " ❇️$bd Waktu Aktif       ${color1} •${color3}$bd $up"
echo -e " ❇️$bd Client Name       ${color1} •${color3}$bd FSID VPN"
echo -e " ❇️$bd Expiry script     ${color1} •${color3}$bd LIFETIME"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ MENU  OPTIONS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "
[${green}01${NC}]${color1} •${color3}$bd add Vmess (${color2}add-vmess${color3})
[${green}02${NC}]${color1} •${color3}$bd add vless (${color2}add-vless${color3})
[${green}03${NC}]${color1} •${color3}$bd add trojan  (${color2}add-trojan${color3})
[${green}04${NC}]${color1} •${color3}$bd shadowsocks (${color2}add-shadowsocks${color3})
[${green}05${NC}]${color1} •${color3}$bd del user (${color2}del-user${color3})
[${green}06${NC}]${color1} •${color3}$bd cek user (${color2}cek-user${color3})
[${green}07${NC}]${color1} •${color3}$bd renew user (${color2}renew-user${color3})
[${green}08${NC}]${color1} •${color3}$bd cek usage (${color2}usage${color3})

[${green}00${NC}]${color1} •${color3}$bd Back to exit Menu \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ MDX OFFICIAL ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e  ""
 read -p "  Select menu :  " opt
echo -e   ""
case $opt in
1 | 01) clear ; addws;;
2 | 02) clear ; addvless ;;
3 | 03) clear ; addtr;;
4 | 04) clear ; addss ;;
5 | 05) clear ; del-user ;;
6 | 06) clear ; cek-user ;;
7 | 07) clear ; renew-user ;;
8 | 08) clear ; cek-usage ;;
0 | 00) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back on menu" ; sleep 1 ; menu ;;
esac
