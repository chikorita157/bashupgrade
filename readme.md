What is this program?
====
bashupgrade is a simple Applescript frontend of my bashupgrade shell script to compile a fixed version of Bash (Boune Shell) that patches the shellshock vulnerability.

You can
* Test for the shellshock vulnerability
* Compile and install an updated version of Bash
* Restore backup versions (Useful when installing the offical patch)

This program requires XCode and Command Line Tools since the script downloads the source (from Apple), applies the patches and compiles it. To get XCode:
* 10.9 Mavericks or later: App Store (Xcode 6)
* 10.8 Mountain Lion - XCode 5.1.1 - [Apple Developer Downloads].
* 10.7 Lion - XCode 4.6.3 - [Apple Developer Downloads].
* 10.6 Snow Leopard - XCode 4.2 (for Snow Leopard, if available) or XCode 3.2.6 [Apple Developer Downloads].


Sparkle updater is included if any additional patches comes out. 1.0.7 will install Bash 3.2.57.

Program is localized in English and 日本語.

What is shellshock?
===
From Wikipedia:

Shellshock, also known as Bashdoor, is a security bug in the widely used Unix Bash shell which was disclosed on 24 September 2014. Many Internet daemons, such as web servers, use Bash to process certain commands, allowing an attacker to cause vulnerable versions of Bash to execute arbitrary commands. This can allow an attacker to gain unauthorized access to a computer system.

When Apple will provide an official update?
===
Apple released an update for Lion, Montian Lion and Mavericks users. Apple's supplied version updates bash to 3.2.53 and may not protect you from futher shellshock vulnerabilities of the latest patch from upstream (3.2.54). If you choose to install it, update Bashupgrade to 1.0.3 and restore the backup before continuing. 

Snow Leopard users can continue to use this program to update bash as Apple will not supply an update for that OS X version.

How to build?
===
Just clone and compile in XCode and will compile to 10.6 by default. If you have problems building, change the SDK version to the latest. 

OR

In the terminal type:
* `git clone https://bitbucket.org/chikorita157/bashupgrade.git`
* `cd bashupgrade`
* `xcodebuild`

The built application will be in bin/release


[Apple Developer Downloads]: https://developer.apple.com/downloads/