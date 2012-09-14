lib_prefix=yandex_contest_
libs=(common system invoker invoker_compat_common invoker_compat_jni invoker_flowctl_pipectl invoker_flowctl_game)
repo=git://github.com/sarum9in

MFLAGS=()
CMAKE_FLAGS=("-DCMAKE_CXX_COMPILER=/usr/bin/g++-4.7" "-DCMAKE_C_COMPILER=/usr/bin/gcc-4.7")

if [[ -f user-config.sh ]]
then
    . ./user-config.sh
fi
