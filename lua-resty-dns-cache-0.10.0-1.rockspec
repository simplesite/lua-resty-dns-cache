package = "lua-resty-dns-cache"
version = "0.10.0-1"
source = {
  url = "git://github.com/simplesite/lua-resty-dns-cache.git",
  tag = "v0.10.0",

}
description = {
  summary = "A wrapper for lua-resty-dns to cache responses based on record TTLs.",
  detailed = "Uses lua-resty-lrucache and ngx.shared.DICT to provide a 2 level cache. Can repopulate cache in the background while returning stale answers.",
  homepage = "https://github.com/simplesite/lua-resty-dns-cache",
  license = "MIT",

}
dependencies = {
  "lua-resty-http",

}
build = {
  type = "make",
  build_variables = {
    CFLAGS="$(CFLAGS)",
    LIBFLAG="$(LIBFLAG)",
    LUA_LIBDIR="$(LUA_LIBDIR)",
    LUA_BINDIR="$(LUA_BINDIR)",
    LUA_INCDIR="$(LUA_INCDIR)",
    LUA="$(LUA)",

  },
  install_variables = {
    INST_PREFIX="$(PREFIX)",
    INST_BINDIR="$(BINDIR)",
    INST_LIBDIR="$(LIBDIR)",
    INST_LUADIR="$(LUADIR)",
    INST_CONFDIR="$(CONFDIR)",

  },

}

