//
//  AppDelegate.m
//  IQKeyboardManagerDemo
//
//  Created by 朱正晶 on 15/7/1.
//  Copyright (c) 2015年 chisalsoft. All rights reserved.
//

#import "AppDelegate.h"
#import "IQKeyboardManager.h"
#import "BZAllInOneView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    [IQKeyboardManager sharedManager].toolbarManageBehaviour = IQAutoToolbarBySubviews;
    [[IQKeyboardManager sharedManager] considerToolbarPreviousNextInViewClass:[BZAllInOneView class]];
    return YES;
}

@end
