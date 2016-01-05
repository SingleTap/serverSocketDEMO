//
//  AppDelegate.m
//  TCPDemo
//
//  Created by colorful-ios on 16/1/4.
//  Copyright © 2016年 7Color. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSTimer *sc = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(ccccc) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop]addTimer:sc forMode:NSRunLoopCommonModes];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:nil];
    
//    BOOL backgroundAccepted = [[UIApplication sharedApplication] setKeepAliveTimeout:600 handler:^{
//        //        [self heartbeat];
//    }];
//    if (backgroundAccepted)
//    {
//        NSLog(@"backgrounding accepted");
//    }

}

- (void)ccccc{
    NSLog(@"-----");
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    [[UIApplication sharedApplication] endBackgroundTask:UIBackgroundTaskInvalid];


}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
