//
//  AppDelegate.m
//  TBSV
//
//  Created by Alexey Golub on 23.02.13.
//  Copyright (c) 2013 Alexey Golub. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    [self loadSplitToTab];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)loadSplitToTab
{
    UISplitViewController *splitViewController = [[UISplitViewController alloc] init];;
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    NSMutableArray *localControllersArray = [[NSMutableArray alloc] init];
    
    // master
    MasterViewController *masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
    
    // detail
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    detailViewController.title = @"Detail";
    UINavigationController *navigationController1 = [[UINavigationController alloc]initWithRootViewController:detailViewController];
    
    //setup the first tab with master and detail
    [splitViewController setDelegate:detailViewController];
    splitViewController.viewControllers = [NSArray arrayWithObjects:navigationController, navigationController1, nil];
    splitViewController.tabBarItem.title = @"First Tab";
    [localControllersArray addObject:splitViewController];
    
    //setup the second tab
    SecondViewController *tvc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    UINavigationController *navCon1 = [[UINavigationController alloc] initWithRootViewController:tvc];
    navCon1.tabBarItem.title = @"Second Tab";
    [localControllersArray addObject:navCon1];
    
    //setup the third tab
    ThirdViewController *fvc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    UINavigationController *navCon2 = [[UINavigationController alloc] initWithRootViewController:fvc];
    navCon2.tabBarItem.title = @"Third Tab";
    [localControllersArray addObject:navCon2];
    
    //set the UISplitViewControllers onto the tab bar
    tabBarController.viewControllers = localControllersArray;
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //switch to the new root view controller
    [appDelegate.window setRootViewController:tabBarController];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
