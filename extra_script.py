Import("env")

my_flags = env.ParseFlags(env['BUILD_FLAGS'])
defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}
# VERSION dang '"_THANGNANG_1.0A_"' -> bo ngoac kep va gach duoi 2 dau
verStr = defines.get("VERSION").strip('"').strip('_')
env.Replace(PROGNAME=verStr)
