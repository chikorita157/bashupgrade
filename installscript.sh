#!/bin/sh
if [ "$(id -u)" != "0" ]; then
echo "Please run the script as root."
exit 1
else
        cd /tmp
		mkdir bash-fix
		cd bash-fix
		echo "Downloading bash source code..."
		curl https://opensource.apple.com/tarballs/bash/bash-92.tar.gz | tar zxf -
		cd bash-92/bash-3.2
		echo "Downloading patch and applying..."
		curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-052 | patch -p0 
		curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-053 | patch -p0 
		curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-054 | patch -p0
		cd ..
		echo "Building..."
		xcodebuild > /dev/null 2>&1
		if [ $? = 0 ]; then
			echo "Build Successful!"
		else
			echo "Build Failed (Build error or XCode not installed), aborting..."
			echo "Removing temp files..."
			rm -rf /tmp/bash-fix
			exit 1
		fi
		if [ -f "/bin/bash.old" ] && [ -f "/bin/bash.old" ]; then
			echo "Backup exists, skipping..."
		else
			echo "Backing up old versions..."
			cp /bin/bash /bin/bash.old
			cp /bin/sh /bin/sh.old
		fi
		echo "Checking versions..."
		build/Release/bash --version # GNU bash, version 3.2.54(1)-release
		build/Release/sh --version   # GNU bash, version 3.2.54(1)-release
		cp build/Release/bash /bin; 
		cp build/Release/sh /bin; 
		chmod a-x /bin/bash.old /bin/sh.old; 
		echo "Bash has been patched."
		bash --version
		echo "Removing temp files..."
		rm -rf /tmp/bash-fix
		exit 0
fi