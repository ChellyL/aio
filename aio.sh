#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


#1 新机器更新一下
updatevps(){
	apt update && apt upgrade
}

#2 更改时区
changetz(){
	sudo timedatectl set-timezone Asia/Shanghai
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

echo && echo -e " 
+-------------------------------------------------------------+
|                                                             | 
|                         小鸡常用脚本                         |                   
|                                                             |
|                                                             |
|                                                             |                     
+-------------------------------------------------------------+
 
 ${Green_font_prefix}1.${Font_color_suffix}  新鸡更新
 ${Green_font_prefix}2.${Font_color_suffix}  更改时区
 ${Green_font_prefix}3.${Font_color_suffix}  加速系列：Bbr系列、锐速
 ${Green_font_prefix}4.${Font_color_suffix}  ip归属及ipv46转换
 ${Green_font_prefix}5.${Font_color_suffix}  流媒体测试
 ${Green_font_prefix}6.${Font_color_suffix}  warp设置
 ${Green_font_prefix}7.${Font_color_suffix}  安装SS
 ${Green_font_prefix}8.${Font_color_suffix}  安装证书
 ${Green_font_prefix}9.${Font_color_suffix}  安装歇斯底里
 ${Green_font_prefix}10.${Font_color_suffix} 安装naiveproxy
 ${Green_font_prefix}11.${Font_color_suffix} 安装naiveproxy yg原版
 ${Green_font_prefix}12.${Font_color_suffix} 安装v2ray
 ${Green_font_prefix}13.${Font_color_suffix} 安装v2ray mack-a原版
 ${Green_font_prefix}14.${Font_color_suffix} 安装Tg专用代理（Go版）
 ${Green_font_prefix}15.${Font_color_suffix} jinwyp版一键  
 ${Green_font_prefix}16.${Font_color_suffix} TrojanPanel
 " && echo
  
fi
echo
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
	*)
	echo "请输入正确数字 [0-35]"
	;;
 esac
