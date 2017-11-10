INST_LUADIR=/usr/share/lualib/resty/dns/

.PHONY:
	all 

install:
	install -m 644 lib/resty/dns/cache.lua $(INST_LUADIR)/cache.lua
