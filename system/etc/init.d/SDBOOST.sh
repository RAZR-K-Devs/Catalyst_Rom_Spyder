#!/system/xbin/bash
: '
 ============ Copyright (C) 2010 Jared Rummler (JRummy16) ============
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 =====================================================================
' 

. /system/etc/liberty.cfg

if busybox [ -e /sys/devices/virtual/bdi/179:0/read_ahead_kb -a $SD_BOOST_AT_BOOT -eq 1 ]; then
	busybox echo $READ_AHEAD_KB > /sys/devices/virtual/bdi/179:0/read_ahead_kb
fi
