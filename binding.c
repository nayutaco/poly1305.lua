#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
#include "poly1305-donna.h"

static int poly1305_auth_binding(lua_State *L) {
  unsigned int msglen;
  unsigned char *msg = luaL_checklstring(L, 1, &msglen);
  unsigned char *key = luaL_checkstring(L, 2);

  unsigned char mac[16];
  poly1305_auth(mac, msg, msglen, key);

  lua_pushlstring(L, mac, 16);
  return 1;
}

static struct luaL_Reg lib[] = {
  {"auth", poly1305_auth_binding}
};

int luaopen_poly1305(lua_State *L) {
  luaL_newlib(L, lib);
  return 1;
}
