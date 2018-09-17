package = "poly1305"
version = "1.0-2"

source = {
  url = "https://github.com/nayutaco/poly1305.lua/releases/download/v1.0/poly1305-1.0.tar.gz"
}

description = {
  summary = "C binding for https://github.com/floodyberry/poly1305-donna",
  homepage = "http://github.com/tock203/poly1305-donna",
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
