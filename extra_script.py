# import os
# Import("env")


# # print(env.Dump())
# # print(env["PROGNAME"])
# my_flags = env.ParseFlags(env['BUILD_FLAGS'])
# # print(my_flags)
# # print(env["PROGNAME"])

# defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}
# verStr = defines.get("VERSION")
# print(verStr[10:-1])
# verStr = verStr[10:-1]
# env.Replace(PROGNAME="DHCC%s_%s" % (verStr,defines.get("MOTOR_DEFAULT")))
# env["PROJECT_BUILD_DIR"] = os.path.join(env["PROJECT_BUILD_DIR"],os.path.normpath(verStr[2:]))
# print(env["PROGNAME"])

import os
import shutil
Import("env")

# Parse build flags to get version and motor default
my_flags = env.ParseFlags(env['BUILD_FLAGS'])
defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}

# Extract version string from the VERSION define.
# (Assuming the VERSION define is like '"_ASIA_NCH__4.9ED_"' and you want to remove the first 10 and last char)
version_define = defines.get("VERSION")
verStr = version_define[10:-1]

# Create a versioned program name (this is used for building the hex file)
versioned_name = "DHCC%s_%s" % (verStr, defines.get("MOTOR_DEFAULT"))
env.Replace(PROGNAME=versioned_name)

# Update build directory to include a version folder (using part of the version string)
version_folder = os.path.normpath(verStr[2:])
env["PROJECT_BUILD_DIR"] = os.path.join(env["PROJECT_BUILD_DIR"], version_folder)

print("Using build folder:", env["PROJECT_BUILD_DIR"])
print("Versioned hex filename:", env["PROGNAME"] + ".hex")

# Post-build action: copy the built hex file to firmware.hex
def rename_hex_file(source, target, env):
    built_hex = str(target[0])
    # Rename the file instead of copying to firmware.hex
    new_hex = built_hex.replace("firmware", env["PROGNAME"])
    shutil.move(built_hex, new_hex)
    print("Hex file renamed to:", new_hex)
    
# Add the post action to the hex file target.
env.AddPostAction("$BUILD_DIR/${PROGNAME}.hex", rename_hex_file)