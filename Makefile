.PHONY:
	all 

install:
	install -m 644 lib/resty/dns $(INST_LUADIR)
