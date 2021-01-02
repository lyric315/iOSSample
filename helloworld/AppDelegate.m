//
//  AppDelegate.m
//  helloworld
//
//  Created by 李睿 on 2021/1/1.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"%@", @"application:didFinishLaunchingWithOptions:");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%@", @"application:applicationWillResignActive:");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"%@", @"application:applicationDidEnterBackground:");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%@", @"application:applicationWillEnterForeground:");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"%@", @"application:applicationDidBecomeActive:");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"%@", @"application:applicationWillTerminate:");
}


@end
