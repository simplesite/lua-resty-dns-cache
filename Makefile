INST_LUADIR=/usr/share/lualib/resty/dns/cache.lua

.PHONY:
	all 

install:
	install -m 644 lib/resty/dns/cache.lua $(INST_LUADIR)/cache.lua
