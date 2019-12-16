# Variables to be exported before this line:
# export ACTION_NAME=<either "Installing" or "Updating">
# export SCRIPT_NAME=<either "install.sh" or "update.sh">
# export ORG_DIR=<either ${PWD} or ${PWD}/`dirname $0`>
# export CURRENT_FOLDER_PREFIX=${PWD##*/}
# export SCRIPT_NAME_PREFIX="${CURRENT_FOLDER_PREFIX}/${SCRIPT_NAME}: "
# export ORG_BACKUP_DIR="${ORG_DIR}/backup"


export TIME_STAMP=$(date +%Y-%m-%d-%T)
export ORG_CURRENT_BACKUP_DIR="${ORG_BACKUP_DIR}/${TIME_STAMP}"

mkdir -p ${ORG_CURRENT_BACKUP_DIR}


# 1. Utilities functions:

# is_path_symlink() accepts 1 argument which is the path to the file or folder to
# be tested
is_path_symlink() {
	local is_symlink=false

	if [[ -e $1 ]]; then
		test -h $1 && is_symlink=true || is_symlink=false
	fi

	echo $is_symlink
}

# How PATH_BACKUP works:
#
# PATH_BACKUP() accepts 1 argument:
#	1. The full location of the file or folder.
#
# When called, PATH_BACKUP will first test if the path existed.
#	If it is then it will test whether the path is a symlink
#		If the path is not a symlink then it will get the dirname of the path,
#		and use mkdir -p to create the whole path except the file/folder's name,
#		then it will just cp the file to the backup folder
#
PATH_BACKUP() {
	if [[ -e $1 ]]; then
		if [[ $(is_path_symlink $1) == false ]]; then
			echo "${SCRIPT_NAME_PREFIX}Backing up: $1 ..."
			local path_dirname=$(dirname "$1")
			mkdir -p ${ORG_CURRENT_BACKUP_DIR}${path_dirname}
			cp -R "$1" ${ORG_CURRENT_BACKUP_DIR}${path_dirname}
		fi
	fi
}


# 2. Backup necessary directories before processing:
PATH_BACKUP ${VIM_DIR}${XMLEDIT_FTPLUGIN_SUBDIR}/html.vim

PATH_BACKUP ${ETC_DIR}/dircolors/dircolors.ansi-dark

PATH_BACKUP ${PROFILE_D_DIR}/dircolors.sh

PATH_BACKUP ${FONTS_DIR}

PATH_BACKUP ${ETC_DIR}/tmux.conf

PATH_BACKUP ${PL_BINDINGS_TMUX_DIR}/*.conf

PATH_BACKUP ${PL_CONFIG_DIR}/config.json
PATH_BACKUP ${PL_COLORSCHEMES_DIR}/shell/solarized.json
PATH_BACKUP ${PL_COLORSCHEMES_DIR}/tmux/default.json
PATH_BACKUP ${PL_COLORSCHEMES_DIR}/vim/solarized.json
PATH_BACKUP ${PL_THEMES_DIR}/tmux/default.json

PATH_BACKUP ${SHARE_DIR}/vim/vim.png
PATH_BACKUP ${LAUNCHER_DIR}/vim-terminal.desktop
PATH_BACKUP ${LAUNCHER_DIR}/ideaic13.desktop

for child in ${ORG_CHILDREN_LN}; do
	PATH_BACKUP ${HOME}/.${child}
done

for child in ${ORG_RCS_LN}; do
	PATH_BACKUP ${HOME}/.${child}
done
