#!/bin/bash
#
# install.sh
#
# Installation script for phongvcao's dotfiles on Fedora
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

export ACTION_NAME="Installing"
export SCRIPT_NAME="install.sh"

# Extract current directories
if [ "`dirname $0`" == "." ]; then
	export ORG_DIR="${PWD}"
else
	export ORG_DIR="${PWD}/`dirname $0`"
fi

source ${ORG_DIR}/header.sh

source ${ORG_DIR}/skeleton.sh
