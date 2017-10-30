OPENRESTY_PREFIX=/usr/local/openresty

INSTALL ?= install
TEST_FILE ?= t

.PHONY: all test leak

all: ;


install: all
	$(INSTALL) -d $(INST_LUADIR)/resty/dns
#	$(INSTALL) -m 644 lib/resty/dns/cache.lua $(INST_LUADIR)/resty/dns/cache.lua 

leak: all
	TEST_NGINX_CHECK_LEAK=1	TEST_NGINX_NO_SHUFFLE=1 PATH=$(OPENRESTY_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r $(TEST_FILE)

test: all
	TEST_NGINX_NO_SHUFFLE=1 PATH=$(OPENRESTY_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r $(TEST_FILE)
	util/lua-releng.pl

