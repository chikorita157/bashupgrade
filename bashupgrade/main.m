//
//  main.m
//  bashupgrade
//
//  Created by Nanoha Takamachi on 2014/09/28.
//  Copyright (c) 2014年 chikorita157. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[])
{
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
