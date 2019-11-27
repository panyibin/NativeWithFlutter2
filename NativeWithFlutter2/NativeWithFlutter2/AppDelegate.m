//
//  AppDelegate.m
//  NativeWithFlutter2
//
//  Created by panyibin on 2019/11/19.
//  Copyright © 2019 panyibin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
//#import <Flutter/Flutter.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"testGod" project:nil];
    [self.flutterEngine runWithEntrypoint:nil];
    
    return YES;
}


@end
