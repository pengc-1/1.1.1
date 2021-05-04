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
mkdir -p package/custom
cd package/custom
git clone --depth=1 https://github.com/openwrt-develop/luci-theme-atmaterial
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
#git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome
git clone --depth=1  https://github.com/pymumu/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns
git clone --depth=1   https://github.com/jerrykuku/luci-theme-argon
#git clone --depth=1 https://github.com/vernesong/OpenClash
#git clone --depth=1 https://github.com/Lienol/openwrt-package
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small
svn checkout https://github.com/OpenWrt-Actions/openwrt-package-lienol/trunk/lienol/luci-app-passwall passwall
cd -

./scripts/feeds update -a
./scripts/feeds install -a

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
