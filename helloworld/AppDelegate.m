//
//  AppDelegate.m
//  helloworld
//
//  Created by 李睿 on 2021/1/1.
//

#import "AppDelegate.h"
#import "HelloWorldViewController.h"
#import "ViewController.h"
#import "MainTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"%@", @"application:didFinishLaunchingWithOptions:");
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
//    HelloWorldViewController *viewController = [[HelloWorldViewController alloc]initWithNibName:@"HelloWorldViewController" bundle:nil];
    MainTableViewController *viewController = [[MainTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
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
