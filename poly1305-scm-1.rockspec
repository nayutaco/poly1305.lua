package = "poly1305"
version = "scm-1"

source = {
  url = "git://github.com/tock203/poly1305.lua.git"
}

description = {
  summary = "Lua binding for https://github.com/floodyberry/poly1305-donna",
  homepage = "http://github.com/nayutaco/poly1305.lua",
  license = "MIT"
}

dependencies = {"lua == 5.2"}

build = {
  type = "builtin",
  modules = {
    poly1305 = {
      sources = {"binding.c", "poly1305-donna/poly1305-donna.c"},
      libraries = {"lua5.2"},
      incdirs = {"./poly1305-donna"}
    }
  }
}
