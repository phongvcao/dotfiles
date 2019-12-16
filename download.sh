#!/bin/bash
#
# download.sh
#
# Download the latest .dotfiles version on Github down to upgrade this repo
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

echo "Downloading the latest .dotfiles version ..."

git fetch --all

git reset --hard

git pull origin master

echo "Finished downloading the latest .dotfiles version ..."

echo "You've got the latest .dotfiles version on your computer!"
