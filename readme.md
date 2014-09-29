What is this program?
====
bashupgrade is a simple Applescript frontend of my bashupgrade shell script to compile a fixed version of Bash (Boune Shell) that patches the shellshock vulnerability.

You can
* Test for the shellshock vulnerability
* Compile and install an updated version of Bash
* Restore backup versions (Useful when installing the offical patch)

This program requires XCode and Command Line Tools since the script downloads the source (from Apple), applies the patches and compiles it. To get XCode:
* 10.9 or later: App Store
* 10.8 or earlier: Check the [Apple Developer Downloads].

Sparkle updater is included if any additional patches comes out.

Program is localized in English and 日本語.

What is shellshock?
===
From Wikipedia:

Shellshock, also known as Bashdoor, is a security bug in the widely used Unix Bash shell which was disclosed on 24 September 2014. Many Internet daemons, such as web servers, use Bash to process certain commands, allowing an attacker to cause vulnerable versions of Bash to execute arbitrary commands. This can allow an attacker to gain unauthorized access to a computer system.

When Apple will provide an official update?
===
They say it won't affect normal users, but they will most likely release a patch in the near future.

How to build?
===
Just clone and compile in XCode and will compile to 10.6 by default. If you have problems building, change the SDK version to the latest. 

OR

In the terminal type:
`git clone https://github.com/chikorita157/bashupgrade.git
cd bashupgrade
xcodebuild`

The built application will be in bin/release


[Apple Developer Downloads]: https://developer.apple.com/downloads/