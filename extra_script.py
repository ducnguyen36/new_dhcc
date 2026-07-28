Import("env")

my_flags = env.ParseFlags(env['BUILD_FLAGS'])
defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}
# VERSION dang '"_THANGNANG_1.0A_"' -> bo ngoac kep va gach duoi 2 dau
verStr = defines.get("VERSION").strip('"').strip('_')
# ten file hex kem ten env: THANGNANG_1.0C_THANG_NO.hex / ..._THANG_NC.hex
env.Replace(PROGNAME="%s_%s" % (verStr, env["PIOENV"]))
