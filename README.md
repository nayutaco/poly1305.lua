# poly1305.lua
A Lua binding for https://github.com/floodyberry/poly1305-donna

## Build
```
git clone https://github.com/tock203/poly1305.lua.git --recursive
gcc binding.c poly1305-donna/poly1305-donna.c -shared -o poly1305.so -fPIC -llua5.2 -I/usr/include/lua5.2 -I./poly1305-donna
```
