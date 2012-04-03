#!/usr/bin/env tpsh

exec /notreal
# assert $? != 0; should be 2 (ENOENT)

exec ls tests.d
