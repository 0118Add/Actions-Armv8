# �汾������ʾһ���Լ������֣�BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ ��Щ���Ǻ����ӵģ�
#sed -i "s/OpenWrt /BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
#ʹ��Դ���Դ�ShadowSocksR Plus+�������
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' target/linux/x86/Makefile
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/0118Add/luci-app-ssr-plus.git package/luci-app-ssr-plus
git clone https://github.com/xiaorouji/openwrt-package.git package/openwrt-package
#git clone https://github.com/8688Add/luci-app-koolproxyR.git package/luci-app-koolproxyR
#git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone https://github.com/8688Add/luci-theme-infinityfreedom.git package/luci-theme-infinityfreedom
#git clone https://github.com/ElonH/Rclone-OpenWrt.git package/luci-app-rclone
git clone https://github.com/8688Add/luci-theme-opentomato.git package/luci-theme-opentomato
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge
#rm -rf package/applications/luci-app-https-dns-proxy
#git clone https://github.com/8688Add/https-dns-proxy.git package/applications/luci-app-https-dns-proxy-whisky
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/luci-app-iptvhelper
#git clone https://github.com/siropboy/mypackages.git package/luci-app-koolddns


# �޸�openwrt��½��ַ,�������192.168.2.2�޸ĳ�����Ҫ�ľͿ�����
#sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# �޸��������֣���OpenWrt-123�޸���ϲ���ľ��У����ܴ����ֻ���ʹ�����ģ�
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123'' package/lean/default-settings/files/zzz-default-settings

# �汾������ʾһ���Լ������֣�281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ ��Щ���Ǻ����ӵģ�
#sed -i "s/OpenWrt /281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# �޸� argon ΪĬ������,�ɸ�����ϲ�����޸ĳ������ģ���ѡ����Щ���Զ��ı�ΪĬ��������������Ч����
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# ��������Ϊ�գ���װ�̼�ʱ���������½��Ȼ���Լ��޸���Ҫ�����룩
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# �޸Ĳ�����֣��޸����ֺ�֪���᲻��Բ��������Ӱ�죬�Լ�����ԣ�
#sed -i 's/"BaiduPCS Web"/"�ٶ�����"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
#sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT����")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
#sed -i 's/"aMule����"/"��¿����"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"����洢"/"�洢"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"����洢"/"�洢"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
#sed -i 's/"Turbo ACC �������"/"�������"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
#sed -i 's/"Turbo ACC �������"/"�������"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
#sed -i 's/"ʵʱ�������"/"����"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
#sed -i 's/"KMS ������"/"KMS����"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
#sed -i 's/"TTYD �ն�"/"���"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
#sed -i 's/"USB ��ӡ������"/"��ӡ����"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"����洢"/"�洢"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"Web ����"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
#sed -i 's/"����Ȩ"/"������"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
#sed -i 's/"������"/"����"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po