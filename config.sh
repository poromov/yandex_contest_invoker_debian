lib_prefix=yandex_contest_
extlibs=(bunsan_common)
libs=(common system invoker invoker_compat_common invoker_flowctl_game invoker_compat_jni invoker_flowctl_pipectl)
repo=git://github.com/sarum9in

alllibs=("${extlibs[@]}" "${libs[@]}")

invoker_compat_jni_version="1.0.0-BUILD-SNAPSHOT"

MFLAGS=()
CMAKE_FLAGS=("-DCMAKE_CXX_COMPILER=/usr/bin/g++-4.7" "-DCMAKE_C_COMPILER=/usr/bin/gcc-4.7")

if [[ -f user-config.sh ]]
then
    . ./user-config.sh
fi
