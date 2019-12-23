#!/bin/bash
#
# skeleton.sh #
# Skeleton script for both dotfiles/install.sh and dotfiles/update.sh
#
#  Copyright (C) 2014-2015 Phong V. Cao <phongvcao@phongvcao.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 3 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.""
#
#

# Variables to be exported before this line:
# export ACTION_NAME=<either "Installing" or "Updating">
# export SCRIPT_NAME=<either "install.sh" or "update.sh">
# export ORG_DIR=<either ${PWD} or ${PWD}/`dirname $0`>

# 1. Assign necessary directories to variables for use later

source ${ORG_DIR}/header.sh

export CURRENT_FOLDER_PREFIX=${PWD##*/}
export SCRIPT_NAME_PREFIX="${CURRENT_FOLDER_PREFIX}/${SCRIPT_NAME}: "

echo "${SCRIPT_NAME_PREFIX}Assigning necessary directories to variables for use later ..."

export ORG_BACKUP_DIR="${ORG_DIR}/backup"
export BUNDLE_SUBDIR=/bundle
export VUNDLE_SUBDIR=${BUNDLE_SUBDIR}/Vundle.vim
export VIMPROC_SUBDIR=${BUNDLE_SUBDIR}/vimproc.vim
export YCM_SUBDIR=${BUNDLE_SUBDIR}/YouCompleteMe
export XMLEDIT_SUBDIR=${BUNDLE_SUBDIR}/xmledit

export XMLEDIT_FTPLUGIN_SUBDIR=${XMLEDIT_SUBDIR}/ftplugin

export PL_DIR=/usr/lib/python3.4/site-packages/powerline
export PL_CONFIG_DIR=${PL_DIR}/config_files
export PL_COLORSCHEMES_DIR=${PL_CONFIG_DIR}/colorschemes
export PL_THEMES_DIR=${PL_CONFIG_DIR}/themes
export PL_BINDINGS_DIR=${PL_DIR}/bindings
export PL_BINDINGS_TMUX_DIR=${PL_BINDINGS_DIR}/tmux

export SHARE_DIR=/usr/share
export ETC_DIR=/etc
export BIN_DIR=/usr/bin
export PROFILE_D_DIR=${ETC_DIR}/profile.d
export FONTS_DIR=${SHARE_DIR}/fonts/dejavu-powerline
export LAUNCHER_DIR=${SHARE_DIR}/applications

export VIM_DIR=${HOME}/.vim

export ORG_TEMP_DIR=${ORG_DIR}/temp
export ORG_GTCS_TEMPDIR=${ORG_TEMP_DIR}/gnome-terminal-colors-solarized
export ORG_DS_TEMPDIR=${ORG_TEMP_DIR}/dircolors-solarized
export ORG_PF_TEMPDIR=${ORG_TEMP_DIR}/powerline-fonts
export ORG_ROOT_DIR=${ORG_DIR}/root
export ORG_RCS_DIR=${ORG_DIR}/rcs
export ORG_CHILDREN_LN="config/bleachbit config/dunst config/i3
config/nitrogen config/dconf config/gconf/apps config/gtk-3.0
config/Trolltech.conf config/user-dirs.dirs IdeaIC13/intellij-settings.jar
IdeaIC13/config"
export ORG_RCS_LN="bash_logout bash_profile bashrc gitconfig ideavimrc
vimperatorrc vimrc vrapperrc xinitrc NERDTreeBookmarks"
export ORG_BIN_LN="/usr/local/netbeans*/bin/netbeans /opt/IdeaIC13/bin/idea.sh"


# 2. Backup necessary directories before processing:
echo "${SCRIPT_NAME_PREFIX}Backing up necessary directories before processing "\
	"..."

source ${ORG_DIR}/backup.sh

echo "${SCRIPT_NAME_PREFIX}Finished backing up necessary directories ..."


# 3. Install the pre-requisites
if [[ "${ACTION_NAME}" == "Installing" ]]; then
	echo "${SCRIPT_NAME_PREFIX}Installing the pre-requisites ..."
elif [[ "${ACTION_NAME}" == "Updating" ]]; then
	echo "${SCRIPT_NAME_PREFIX}Updating system software to the latest versions ..."
fi

sudo ${PKG_MANAGER} ${PKG_MANAGER_UPDATE}

if [[ "${ACTION_NAME}" == "Installing" ]]; then
	sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} git python-pip ${PYTHON_DEVEL} ${GVIM} make automake
	sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} autoconf ${GCC_CPP} ${KERNEL_DEVEL} ${CLANG} ctags
    sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} ${I3} dunst ${XBACKLIGHT} ${PKG_MANAGER_EXTERNAL}
    sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} ${SUDO_GUI} feh xclip ibus-unikey pdfshuffler
    sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} lightdm lightdm-gtk-greeter audacity
    sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} python2-pip vagrant virtualbox playonlinux fzf
    sudo ${PKG_MANAGER} ${PKG_MANAGER_INSTALL} id3 llvm squid vpnc networkmanager networkmanager-vpnc dhclient
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} shutter tmux wego-git weather
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} lightdm-gtk-greeter-settings
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} octave-miscellaneous autojump
    # With wemux, add the following line to /etc/wemux/wemux.conf:
    #     host_list=(phongvcao root)
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} octave-specfun wemux-git
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} octave-msh peazip-gtk2 dansguardian
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} octave-splines messengerfordesktop
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} fpp wp-cli fortune-mod-archlinux
    ${PKG_MANAGER_EXTERNAL} ${PKG_MANAGER_EXTERNAL_INSTALL} chromium-pepper-flash freshplayerplugin
    sudo cp ~/.config/i3/arch-white.png /usr/share/backgrounds/gnome/arch-white.png
    yaourt dmenu-xft
    sudo pip install pip-tools jedi
    sudo pip2.7 install pip-tools
    sudo pip2.7 install ansible

    # For homebrew on Mac OS X:
    # brew install coreutils
    # brew install binutils
    # brew install diffutils
    # brew install ed --default-names
    # brew install findutils --with-default-names
    # brew install gawk
    # brew install gnu-indent --with-default-names
    # brew install gnu-sed --with-default-names
    # brew install gnu-tar --with-default-names
    # brew install gnu-which --with-default-names
    # brew install gnutls
    # brew tap homebrew/dupes; brew install grep --with-default-names
    # brew install gzip
    # brew install screen
    # brew install watch
    # brew install wdiff --with-gettext
    # brew install wget
    # brew install bash
    # brew install emacs
    # brew install gdb  # gdb requires further actions to make it work. See `brew info gdb`.
    # brew install gpatch
    # brew install m4
    # brew install make
    # brew install nano
    # brew install file-formula
    # brew install git
    # brew install less
    # brew install openssh
    # brew install perl518   # must run "brew tap homebrew/versions" first!
    # brew install python
    # brew install rsync
    # brew install svn
    # brew install unzip
    # brew install vim --override-system-vi
    # brew install macvim --override-system-vim --custom-system-icons
    # brew install zsh
fi


# 4. Clone all necessary repos to under .dotfiles/temp:
echo "${SCRIPT_NAME_PREFIX}Cloning all necessary repos to under "\
	"${CURRENT_FOLDER_PREFIX}/temp ..."
git clone https://github.com/gmarik/Vundle.vim.git ${VIM_DIR}${VUNDLE_SUBDIR}
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ${ORG_GTCS_TEMPDIR}
git clone https://github.com/huyz/dircolors-solarized.git ${ORG_DS_TEMPDIR}
git clone https://github.com/Lokaltog/powerline-fonts.git ${ORG_PF_TEMPDIR}


# 5. Install & Compile necessary stuffs:

for child in ${ORG_RCS_LN}; do
	echo "${SCRIPT_NAME_PREFIX}Creating symlink to ${child} in ${HOME} ..."
	rm -rf ${HOME}/.${child}
	ln -s -f ${ORG_RCS_DIR}/${child} ${HOME}/.${child}
done

echo "${SCRIPT_NAME_PREFIX}${ACTION_NAME} & Compiling necessary stuffs ..."

if [[ "${ACTION_NAME}" == "Installing" ]]; then
	# a. Install Vim Plugins:
	echo "${SCRIPT_NAME_PREFIX}Installing Vim Plugins ..."
	vim +qall now

	cd ${VIM_DIR}${VIMPROC_SUBDIR}
    vim +qall now

	cd ${VIM_DIR}${YCM_SUBDIR}
	bash ./install.sh --omnisharp-completer

	vim -c :PluginInstall

	# Install Vim plugins' requirements
	# tern_for_vim
    npm install tern ${HOME}/.vim/bundle/tern_for_vim/

    # other Vim plugins that require compilation...
fi

# b. Install Lokaltog/powerline
echo "${SCRIPT_NAME_PREFIX}${ACTION_NAME} Lokaltog/powerline ..."
sudo pip install powerline-status


# 6. Copy all necessary files under .dotfiles/* over to appropriate folders:

# b. Install Solarized Dark for Terminal
echo "${SCRIPT_NAME_PREFIX}${ACTION_NAME} Solarized Dark theme for gnome-terminal ..."
cd ${ORG_GTCS_TEMPDIR}
bash ./set_dark.sh

# c. Install dircolors-solarized for Terminal
echo "${SCRIPT_NAME_PREFIX}${ACTION_NAME} dircolors-solarized for gnome-terminal ..."
cd ${ORG_DS_TEMPDIR}
sudo mkdir -p ${HOME}/.dircolors
# PATH_BACKUP ${ETC_DIR}/dircolors/dircolors.ansi-dark
sudo cp dircolors.ansi-dark ${HOME}/.dircolors/dircolors.ansi-dark
eval `dircolors ${HOME}/.dircolors/dircolors.ansi-dark`

cd ${ORG_ROOT_DIR}${PROFILE_D_DIR}
# PATH_BACKUP ${PROFILE_D_DIR}/dircolors.sh
sudo cp dircolors.sh ${PROFILE_D_DIR}/dircolors.sh

# d. Install powerline-fonts for Powerline
echo "${SCRIPT_NAME_PREFIX}${ACTION_NAME} powerline-fonts for Powerline ..."
cd ${ORG_PF_TEMPDIR}
# PATH_BACKUP ${FONTS_DIR}
sudo cp DejaVuSansMono/*.ttf ${FONTS_DIR}
# PATH_BACKUP ${FONTS_DIR}
sudo cp ${ORG_ROOT_DIR}${FONTS_DIR}/*.ttf ${FONTS_DIR}

# e. Configure powerline for tmux & bash
echo "${SCRIPT_NAME_PREFIX}Configuring powerline for tmux & bash ..."
# PATH_BACKUP ${ETC_DIR}/tmux.conf
sudo cp ${ORG_ROOT_DIR}${ETC_DIR}/tmux.conf ${ETC_DIR}/tmux.conf
# PATH_BACKUP ${PL_BINDINGS_TMUX_DIR}/*.conf
sudo cp ${ORG_ROOT_DIR}${PL_BINDINGS_TMUX_DIR}/*.conf ${PL_BINDINGS_TMUX_DIR}

# f. Modify default powerline themes to fit our needs
echo "${SCRIPT_NAME_PREFIX}Modifying default powerline themes to fit our "\
	"needs ..."
# PATH_BACKUP ${PL_CONFIG_DIR}/config.json
sudo cp ${ORG_ROOT_DIR}${PL_CONFIG_DIR}/config.json ${PL_CONFIG_DIR}/config.json
# PATH_BACKUP ${PL_COLORSCHEMES_DIR}/shell/solarized.json
sudo cp ${ORG_ROOT_DIR}${PL_COLORSCHEMES_DIR}/shell/solarized.json ${PL_COLORSCHEMES_DIR}/shell/solarized.json
# PATH_BACKUP ${PL_COLORSCHEMES_DIR}/tmux/default.json
sudo cp ${ORG_ROOT_DIR}${PL_COLORSCHEMES_DIR}/tmux/default.json ${PL_COLORSCHEMES_DIR}/tmux/default.json
# PATH_BACKUP ${PL_COLORSCHEMES_DIR}/vim/solarized.json
sudo cp ${ORG_ROOT_DIR}${PL_COLORSCHEMES_DIR}/vim/solarized.json ${PL_COLORSCHEMES_DIR}/vim/solarized.json
# PATH_BACKUP ${PL_THEMES_DIR}/tmux/default.json
sudo cp ${ORG_ROOT_DIR}${PL_THEMES_DIR}/tmux/default.json ${PL_THEMES_DIR}/tmux/default.json

# g. Copy *.desktop files & icons to appropriate folders
echo "${SCRIPT_NAME_PREFIX}Copying *.desktop files & *.png icons to "\
	"apppropriate folders ..."
# PATH_BACKUP ${SHARE_DIR}/vim/vim.png
sudo cp ${ORG_ROOT_DIR}${SHARE_DIR}/vim/vim.png ${SHARE_DIR}/vim/vim.png
# PATH_BACKUP ${LAUNCHER_DIR}/*.desktop
sudo cp ${ORG_ROOT_DIR}${LAUNCHER_DIR}/*.desktop ${LAUNCHER_DIR}


# 7. Link all .dotfiles & .dotfolders to the appropriate places:
echo "${SCRIPT_NAME_PREFIX}Linking all .dotfiles & .dotfolders to the appropriate places ..."
cd ${ORG_DIR}

# PATH_BACKUP ${HOME}/.${child}
for child in ${ORG_CHILDREN_LN}; do
	echo "${SCRIPT_NAME_PREFIX}Creating symlink to ${child} in ${HOME} ..."
	rm -rf ${HOME}/.${child}
	ln -s -f ${ORG_DIR}/${child} ${HOME}/.${child}
done

for child in ${ORG_RCS_LN}; do
	echo "${SCRIPT_NAME_PREFIX}Creating symlink to ${child} in ${HOME} ..."
	rm -rf ${HOME}/.${child}
	ln -s -f ${ORG_RCS_DIR}/${child} ${HOME}/.${child}
done

cd ${BIN_DIR}

for child in ${ORG_BIN_LN}; do
	echo "${SCRIPT_NAME_PREFIX}Creating symlink to ${child} in ${BIN_DIR} ..."
	sudo ln -s -f ${ORG_BIN_LN}
done


# 8. Apply changes and test services:
echo "${SCRIPT_NAME_PREFIX}Applying changes and testing services ..."
xdg-user-dirs-gtk-update


# 9. Delete redundant temp folder:
echo "${SCRIPT_NAME_PREFIX}Deleting redundant /temp and its /temp/* subfolders ..."
rm -rf ${ORG_TEMP_DIR}
cd ${ORG_DIR}
echo "${SCRIPT_NAME_PREFIX}Done!"
