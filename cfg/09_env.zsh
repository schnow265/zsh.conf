export EDITOR=nvim

# if clang is avaliable and CC/CXX is unset, set CC/CXX to the respective compiler
[[ -z ${CC:-} ]] && command -v clang >/dev/null 2>&1 && export CC=clang
[[ -z ${CXX:-} ]] && command -v clang++ >/dev/null 2>&1 && export CXX=clang++

# flags applicable for c and C++ compilers.
COMMON_FLAGS="-march=native -O2 -flto=thin"

# explicit exports of flags
[[ -z ${CFLAGS:-} ]] && export CFLAGS="${COMMON_FLAGS}"
[[ -z ${CXXFLAGS:-} ]] && export CXXFLAGS="${COMMON_FLAGS}"
[[ -z ${CPPFLAGS:-} ]] && export CPPFLAGS="${COMMON_FLAGS}"
