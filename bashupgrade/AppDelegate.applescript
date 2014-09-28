--
--  AppDelegate.applescript
--  bashupgrade
--
--  Created by Nanoha Takamachi on 2014/09/28.
--  Copyright (c) 2014年 chikorita157. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"

	-- IBOutlets
	property window : missing value
    property consoletext: missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    on checktbrbtnClicked_(sender)
        # Run check script
        set command to POSIX path of (path to resource "check.sh")
        set resulttxt to (do shell script command)
        set attributedString to current application's NSAttributedString's alloc()'s initWithString_(resulttxt)
        consoletext's textStorage()'s setAttributedString_(attributedString)
        
    end checktbrbtnClicked_
	
    on updatetbrbtnClicked_(sender)
        # Run check script
        set command to POSIX path of (path to resource "installscript.sh")
        set resulttxt to (do shell script command with administrator privileges)
        set attributedString to current application's NSAttributedString's alloc()'s initWithString_(resulttxt)
        consoletext's textStorage()'s setAttributedString_(attributedString)
        
    end updatetbrbtnClicked_
    
    
    on restoretbrbtnClicked_(sender)
        # Run check script
        set command to POSIX path of (path to resource "restore.sh")
        set resulttxt to (do shell script command with administrator privileges)
        set attributedString to current application's NSAttributedString's alloc()'s initWithString_(resulttxt)
        consoletext's textStorage()'s setAttributedString_(attributedString)
        
    end restoretbrbtnClicked_
    
end script