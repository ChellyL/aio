#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

red='\033[0;31m'
yellow='\033[0;33m'
bblue='\033[0;34m'
plain='\033[0m'
blue(){ echo -e "\033[36m$1\033[0m";}
red(){ echo -e "\033[31m$1\033[0m";}
green(){ echo -e "\033[32m$1\033[0m";}
yellow(){ echo -e "\033[33m$1\033[0m";}
white(){ echo -e "\033[37m$1\033[0m";}
readp(){ read -p "$(yellow "$1")" $2;}

#1 新机器更新一下
updatevps(){
	apt update && apt upgrade
}

#2 更改时区
changetz(){
	sudo timedatectl set-timezone Asia/Shanghai
	echo "已修改时区为CST +8"
}

#3 安装BBR 锐速
bbr_ruisu(){
	bash <(curl -s -L https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh)
}

#4 ip归属及ipv46转换
tools(){
	bash <(curl -L -s https://raw.githubusercontent.com/ChellyL/ipv4-6-switch/main/ipv_switch.sh)
}

#5 流媒体测试
media(){
	bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
}

#6 warp设置
warp(){
	bash <(curl -fsSL https://cdn.jsdelivr.net/gh/missuo/CloudflareWarp/warp.sh)
}

#7 安装SS
ss(){
	bash <(curl -s -L https://raw.githubusercontent.com/loyess/Shell/master/ss-plugins.sh)
}

#8 安装证书
acme(){
	bash <(curl -s -L https://raw.githubusercontent.com/ChellyL/aio/main/acme.sh)
}

#9 安装歇斯底里
hysteria(){
	bash <(curl -fsSL https://git.io/hysteria.sh)
}

#10 安装naiveproxy
naive(){
        bash <(curl -s -L https://raw.githubusercontent.com/ChellyL/aio/main/naiveproxy.sh)
}

#11 安装naiveproxy yg原版
naive_yg(){
        wget -N https://gitlab.com/rwkgyg/naiveproxy-yg/raw/main/naiveproxy.sh && bash naiveproxy.sh
}

#12 安装v2ray
V2Ray(){ 
	bash <(curl -s -L https://raw.githubusercontent.com/ChellyL/aio/main/v2.sh)
}

#13 安装v2ray mack-a原版
V2Ray_ma(){ 
	wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
}

#14 安装Tg专用代理（Go版）
Tg_go(){
	bash <(curl -s -L wget https://raw.githubusercontent.com/ChellyL/Docker-mtproto/main/go_mtg.sh)
}

#15 jinwyp版一键
V2Ray_jin(){ 
	bash <(curl -Lso- https://git.io/oneclick)
	}

#16 TrojanPanel 支持Xray/Trojan-Go/Hysteria/NaiveProxy的多用户Web管理面板
TrojanPanel(){
      source <(curl -L https://github.com/trojanpanel/install-script/raw/main/install_script.sh)
}

echo "+-------------------------------------------------------------+"
echo "|                                                             |"
echo "|                         小鸡常用脚本                         |"                 
echo "|                                                             |"
echo "|                                                             |"
echo "|                                                             |"                     
echo "+-------------------------------------------------------------+"
 
green "1.  新鸡更新"
green "2.  更改时区"
green "3.  加速系列：Bbr系列、锐速"
green "4.  ip归属及ipv46转换"
green "5.  流媒体测试"
green "6.  warp设置"
white "----------------------------------------------------------------------------------"
green "7.  安装SS"
green "8.  安装证书"
green "9.  安装歇斯底里"
green "10. 安装naiveproxy"
green "11. 安装naiveproxy yg原版"
green "12. 安装v2ray"
green '13. 安装v2ray mack-a原版'
green '14. 安装Tg专用代理（Go版）'
green "15. jinwyp版一键  "
green "16. TrojanPanel"
red "0. 退出"
red "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "证书所在："
echo ""
echo "hysteria：/etc/hihy/cert"
echo "naivepproxy：/root/ygkkkca"
echo "mack-a：/etc/v2ray-agent/tls"
echo "jinway：/nginxweb/cert"
echo "acme：/root/"
echo "修改：/etc/acme/"

read -e -p " 请输入数字 [0-35]:" num
case "$num" in
	1)
	updatevps
	;;
	2)
	changetz
	;;
	3)
	bbr_ruisu
	;;
	4)
	tools
	;;
	5)
	media
	;;
	6)
	warp
	;;
	7)
	ss
	;;
	8)
	acme
	;;
	9)
	hysteria
	;;
	10)
	naive
	;;
	11)
	naive_yg
	;;
	12)
	V2Ray
	;;
	13)
	V2Ray_ma
	;;
	14)
	Tg_go
	;;
	15)
	V2Ray_jin
	;;
	16)
	TrojanPanel
	;;
	0)
	exit
	;;
	*)
	echo "请输入正确数字 [0-16]"
	;;
 esac
