
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 取消掉feeds.conf.default文件里面的helloworld的#注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default  #使用源码自带ShadowSocksR Plus+出国软件
#sed -i 's/src-git helloworld/src-git helloworld/g' ./feeds.conf.default
#
echo '单独添加app-ssr-plus'
git clone https://github.com/xmyaaa/immortalwrt-luci/tree/openwrt-18.06-k5.4.git package/applications/luci-app-ssr-plus
echo '=========Add app-ssr-plus OK!========='

echo '替换golang到1.22.x'
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
echo '=========Replace golang OK!========='
#
echo '一键命令(防止插件冲突，删除重复)'
# sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '2i src-git small https://github.com/xmyaaa/kenzok8-small' feeds.conf.default
# ./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns
# rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
# rm -rf feeds/packages/utils/v2dat
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
# ./scripts/feeds install -a 
echo '=========删除重复 OK!========='
#
#修改内核版本（下面两行代码前面有#为源码默认最新5.4内核,没#为4.19内核,默认修改X86的，其他机型L大那里target/linux查看，对应修改下面的路径就好）
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/ramips/Makefile  #修改内核版本
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/ramips/Makefile  #修改内核版本
#
# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
#
echo '添加Passwall2软件'
# rm -rf feeds/luci/applications/luci-app-passwall2
# mkdir feeds/luci/applications/luci-app-passwall2
# git clone -b main --single-branch https://github.com/xiaorouji/openwrt-passwall2 passwall2
# mv passwall2/luci-app-passwall2/* feeds/luci/applications/luci-app-passwall2/
# rm -rf passwall2
echo '=========Replace passwall source OK!========='
#
echo '添加Passwall依赖feeds'
# sed -i '1 i src-git-full passwall https://github.com/xiaorouji/openwrt-passwall-packages;main' feeds.conf.default
echo '=========Add passwall feeds source OK!========='
#
# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git' >>feeds.conf.default
#echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
#echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"

# echo '添加omcproxy软件源'
#git clone https://github.com/smsmail2022/luci-app-omcproxy package/luci-app-omcproxy
#git clone -b 18.06 https://github.com/riverscn/luci-app-omcproxy.git package/luci-app-omcproxy
#git clone https://github.com/riverscn/luci-app-omcproxy.git package/luci-app-omcproxy
