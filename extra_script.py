import os
Import("env")


# print(env.Dump())
# print(env["PROGNAME"])
my_flags = env.ParseFlags(env['BUILD_FLAGS'])
# print(my_flags)
# print(env["PROGNAME"])

defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}
verStr = defines.get("VERSION")
# print(verStr[10:-1])
verStr = verStr[10:-1]
env.Replace(PROGNAME="DHCC%s" % (verStr))
# env["PROJECT_BUILD_DIR"] = os.path.join(env["PROJECT_BUILD_DIR"],os.path.normpath(verStr[2:]))
# print(env["PROGNAME"])
