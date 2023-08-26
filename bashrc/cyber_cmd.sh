if [ -f ~/Documents/MyRepo/europa/release/cyber/setup.bash ]; then
    source ~/Documents/MyRepo/europa/release/cyber/setup.bash
fi

alias lannch_dv="cyber_launch start dreamview.launch"
alias launch_ehp="cyber_launch start ehp.launch"
alias launch_planning="cyber_launch start planning.launch"

export CLANG_DIR=/home/xcdh/program/clang+llvm-16.0.0-x86_64-linux-gnu-ubuntu-18.04
export PATH=${CLANG_DIR}/bin:$PATH
