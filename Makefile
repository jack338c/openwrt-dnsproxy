include $(TOPDIR)/rules.mk

PKG_NAME:=dnsproxy
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/zhengxinhn/dnsproxy.git
PKG_SOURCE_VERSION:=1f37c6a359718d40437c90e9347d408a91258665

include $(INCLUDE_DIR)/package.mk

define Package/dnsproxy
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=Web Servers/Proxies
	TITLE:=A simple DNS proxy server
	URL:=https://github.com/zhengxinhn/dnsproxy
endef



define Package/dnsproxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/dnsproxy $(1)/usr/bin

endef

$(eval $(call BuildPackage,dnsproxy))
