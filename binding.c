#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
#include "poly1305-donna.c"

static int poly1305_auth_binding(lua_State *L) {
  unsigned char *msg = luaL_checkstring(L, 1);
  unsigned int msglen = luaL_checknumber(L, 2);
  unsigned char *key = luaL_checkstring(L, 3);

  unsigned char mac[16];
  poly1305_auth(mac, msg, msglen, key);

  lua_pushlstring(L, mac, 16);
  return 1;
}

int luaopen_mylib(lua_State *L) {
  lua_pushcfunction(L, poly1305_auth_binding);
  return 1;
}
