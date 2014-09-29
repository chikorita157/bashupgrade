#!/bin/bash
if [ "$(id -u)" != "0" ]; then
echo "Please run the script as root."
exit 1
else
cp /bin/bash.old /bin/bash
cp /bin/sh.old /bin/sh
chmod 555 /bin/bash /bin/sh
echo “Old versions restored!”
rm /bin/bash.old
rm /bin/sh.old
exit 0
fi