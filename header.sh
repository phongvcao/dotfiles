#!/bin/bash

# Determine the Distro

# Determine the Package Manager variables
function initializePackageManager {
local unameR=$(uname -r)

if [[ ${unameR} == *ARCH* ]]; then
	export PKG_MANAGER="pacman"
	export PKG_MANAGER_EXTERNAL="yaourt"
    yaourt --noconfirm -Syu --aur --force; \
	export PKG_MANAGER_EXTERNAL_INSTALL="--noconfirm --aur --force"
	export PKG_MANAGER_INSTALL="-S"
	export PKG_MANAGER_REMOVE="-R"
	export PKG_MANAGER_UPDATE="-Syu"
    export PKG_MANAGER_UPDATE_EXTERNAL="-Syu --noconfirm --aur --force"
	export GRUB_MKCONFIG="grub-mkconfig -o /boot/grub/grub.cfg"
	export GVIM="gvim-python3"
	export PYTHON_DEVEL=""
	export GCC_CPP="gcc"
	export KERNEL_DEVEL=""
	export CLANG="clang"
	export I3="i3"
	export XBACKLIGHT=""
	export SUDO_GUI="gksu"
elif [[ ${unameR} == *fc* ]]; then
	export PKG_MANAGER="yum"
	export PKG_MANAGER_EXTERNAL="sudo yum"
	export PKG_MANAGER_EXTERNAL_INSTALL="install"
	export PKG_MANAGER_INSTALL="install"
	export PKG_MANAGER_REMOVE="remove"
	export PKG_MANAGER_UPDATE="update"
	export PKG_MANAGER_UPDATE_EXTERNAL="update"
	export GRUB_MKCONFIG="grub2-mkconfig -o /boot/grub2/grub.cfg"
	export GVIM="vim-x11 vim-common"
	export PYTHON_DEVEL="python-devel"
	export GCC_CPP="gcc gcc-c++"
	export KERNEL_DEVEL="kernel-devel"
	export CLANG="clang clang-devel"
	export I3="i3 i3lock"
	export XBACKLIGHT="xbacklight"
	export SUDO_GUI="beesu"
else
	echo ${distro}
fi
}

initializePackageManager
