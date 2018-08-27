package = "poly1305"
version = "scm-1"

source = {
    url = "git://github.com/tock203/poly1305.git",
}

description = {
    summary = "C binding for https://github.com/floodyberry/poly1305-donna",
    homepage = "http://github.com/tock203/poly1305-donna",
    license = "MIT",
}

dependencies = {"lua == 5.2"}

build = {
    type = "builtin",
    modules = {
      poly1305 = {
        sources = {"binding.c", "poly1305-donna/poly1305-donna.c"},
        libraries = {"lua5.2"},
        incdirs = {"/usr/include/lua5.2", "./poly1305-donna"}
      }
    }
}