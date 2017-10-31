ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BUILD_DIR?=$(ROOT_DIR)/build

INST_PREFIX = /usr/share/luajit
INST_BINDIR = $(INST_PREFIX)/bin
INST_LIBDIR = $(INST_PREFIX)/lib/lua/5.1
INST_LUADIR = $(INST_PREFIX)/share/lua/5.1
INST_CONFDIR = $(INST_PREFIX)/etc

.PHONY:
	all 

install:
	install -d $(INST_LUADIR)/resty
	install -m 644 lib/resty/dns/cache.lua $(INST_LUADIR)/resty/cache.lua

