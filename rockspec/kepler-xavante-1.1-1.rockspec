package = "Kepler-Xavante"

version = "1.1-1"

source = {
  url = "http://luaforge.net/frs/download.php/3461/kepler-1.1.tar.gz",
}

description = {
  summary = "The Lua Web Development Platform",
  detailed = [[
Kepler is a Lua web development platform that offers the same advantages of Lua. Kepler is simple, portable, light, embeddable and extensible. This installs the Xavante webserver.  ]],
  license = "MIT/X11",
  homepage = "http://www.keplerproject.org/kepler"
}

dependencies = {
	"kepler >= 1.1",
	"rings >= 1.2.1",
	"xavante >= 2.0",
}

build = {
   type = "make",
   build_pass = false,
   install_target = "install-xavante",
   install_variables = {
     PREFIX  = "$(PREFIX)",
     LUA_DIR = "$(LUADIR)",
     BIN_DIR = "$(BINDIR)"
   },
   platforms = {
     win32 = {
       build_pass = true,
       build_target = "xavante",
       build_variables = {
         CFLAGS = "$(CFLAGS)",
	 LUA_INCDIR = "$(LUA_INCDIR)",
	 LUA_LIB = "$(LUA_LIBDIR)\\lua5.1.lib"
       }
     }
   }
}
