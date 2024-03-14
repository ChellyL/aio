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

#1 新机器更新一下
updatevps(){
    apt update
    apt upgrade
    read -p "顺便装一下docker?[Y|n]:" docker
    if [[ "${docker}" == 'n' || "${docker}" == 'N'  ]]; then
        true
    else
        apt install docker && apt install docker-compose
    fi
}

#2 更改时区
changetz(){
    apt install sudo
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
    # bash <(curl -fsSL https://cdn.jsdelivr.net/gh/missuo/CloudflareWarp/warp.sh)
    # bash <(curl https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh)
    wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh
}

#7 改root登录
login(){
    echo "--------------------------------------------------------------"
    echo "需要使用以下代码自行设置密码："
    echo ""
    echo "sudo -i        # 转为root权限 "
    echo "sudo passwd root   # 设置root用户密码"
    echo "然后使用脚本"
    echo "wget -qO- https://raw.githubusercontent.com/vsp6688/GCP-SSH-ROOT-OPEN/master/gcp_root_ssh.sh | bash"
    echo "--------------------------------------------------------------"
}

#8 安装证书
acme(){
    wget -N --no-check-certificate https://raw.githubusercontent.com/Misaka-blog/acme-script/main/acme.sh && bash acme.sh
}

#8 安装SS
ss(){
    wget -N --no-check-certificate -c -t3 -T60 -O ss-plugins.sh https://raw.githubusercontent.com/loyess/Shell/master/ss-plugins.sh
    chmod +x ss-plugins.sh
    ./ss-plugins.sh
}

#9 安装Tg专用代理（Go版）
Tg_go(){
    bash <(curl -s -L wget https://raw.githubusercontent.com/ChellyL/Docker-mtproto/main/go_mtg.sh)
}

#10 检测回程
BestTrace(){
    wget -qO- https://raw.githubusercontent.com/hongwenjun/vps_setup/master/autoBestTrace.sh | bash
}

# 11 DD脚本
DD(){
    echo "--------------------------------------------------------------"
    echo "使用以下代码自行设置"
    echo ""
    echo "wget https://raw.githubusercontent.com/hongwenjun/vps_setup/master/auto.sh && bash auto.sh -d 11 -v 64 -a -p passwd"
    echo "-d 11 可以改成其他系统版本，如 -u（buntu） 22 ，-p 可改成你自己的密码"
}
#11 安装歇斯底里
hysteria(){
    #bash <(curl -fsSL https://git.io/hysteria.sh)
    bash <(curl -fsSL https://raw.githubusercontent.com/emptysuns/Hi_Hysteria/main/server/install.sh)
}

# #11 安装naiveproxy
# naive(){
#         bash <(curl -s -L https://raw.githubusercontent.com/ChellyL/aio/main/naiveproxy.sh)
# }

# #12 安装naiveproxy yg原版
# naive_yg(){
#         wget -N https://gitlab.com/rwkgyg/naiveproxy-yg/raw/main/naiveproxy.sh && bash naiveproxy.sh
# # }

# #13 安装v2ray
# V2Ray(){ 
#     bash <(curl -s -L https://raw.githubusercontent.com/ChellyL/aio/main/v2.sh)
# }

#12 安装v2ray mack-a原版
V2Ray_ma(){ 
    wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
}


#13 jinwyp版一键
V2Ray_jin(){ 
    # bash <(curl -Lso- https://git.io/oneclick)
    bash <(curl -Lso- https://raw.githubusercontent.com/jinwyp/one_click_script/master/trojan_v2ray_install.sh)
    }

#14 TrojanPanel 支持Xray/Trojan-Go/Hysteria/NaiveProxy的多用户Web管理面板
TrojanPanel(){
      source <(curl -L https://github.com/trojanpanel/install-script/raw/main/install_script.sh)
}

#15 TrojanPanel 单机版 
TrojanPanel_alone(){
      source <(curl -L https://github.com/trojanpanel/install-script/raw/main/install_script_standalone.sh)

}

#16 sing-box
sing_box(){
      bash <(wget -qO- https://raw.githubusercontent.com/fscarmen/sing-box/main/sing-box.sh)

}

#17 SS 显示配置
ss_show(){
      wget -N --no-check-certificate -c -t3 -T60 -O ss-plugins.sh https://raw.githubusercontent.com/loyess/Shell/master/ss-plugins.sh
      chmod +x ss-plugins.sh
      ./ss-plugins.sh show

}

#18 SS 显示帮助
ss_help(){
      wget -N --no-check-certificate -c -t3 -T60 -O ss-plugins.sh https://raw.githubusercontent.com/loyess/Shell/master/ss-plugins.sh
      chmod +x ss-plugins.sh
      ./ss-plugins.sh help

}




echo "+-------------------------------------------------------------+"
echo "|                         自用小鸡脚本                        |"                                      
echo "+-------------------------------------------------------------+"
green "01. 新鸡fresh up"
green "02. 更改时区CST"
green "03. bbr加速+一键dd"
green "04. ip归属及ipv46转换"
green "05. 流媒体测试"
green "06. warp设置"
green "07. 使用root登录[适合甲骨文、AZ等]"
green "08. acme证书管理"
green '09. Tg代理mtg'
green "10. BestTrace去程回程检测"
green "11. 萌咖DD脚本"
white "---------------------------------------------------------------"
green "12. SS"
green "13. Hysteria"
green "14. mack-a版 v2ray"
green "15. jinwyp版一键"
green "16. Sing-box for VPS"
green "17. TrojanPanel 联机"
green "18. TrojanPanel 单机"
green "19. SS查询配置"
green "20. SS显示帮助"
red " 0. 退出"
blue "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "证书路径："
echo "hysteria：/root/.local/share/certmagic/certificates/acme-v02.api.letsencrypt.org-directory/"
#echo "naivepproxy：/root/ygkkkca"
echo "mack-a：/etc/v2ray-agent/tls"
echo "jinway：/nginxweb/cert"
echo "acme：/root/"
echo "TrojanPanel: /tpdata/caddy/cert/"
blue "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
read -p "请输入数字 [0-15]:" num
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
    login
    ;;
    8)
    acme
    ;;
    9)
    Tg_go
    ;;
    10)
    BestTrace
    ;;
    11)
    DD
    ;;
    12)
    ss
    ;;
    13)
    hysteria
    ;;
    14)
    V2Ray_ma
    ;;
    15)
    V2Ray_jin
    ;;
    16)
    sing_box
    ;;
    17)
    TrojanPanel
    ;;
    18)
    TrojanPanel_alone
    ;;
    19)
    ss_show
    ;;
    20)
    ss_help
    ;;
    0)
    exit
    ;;
    *)
    echo "请输入正确数字 [0-17]"
    ;;
 esac
