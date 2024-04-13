
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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

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
