//
//  AppDelegate.m
//  TabBar
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.tabBarController = [[UITabBarController alloc] init];
    
    FirstViewController *firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];                 
    firstViewController.title = @"Premier";
    
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];                 
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    navigationController.title = @"Deuxième";
    [navigationController setNavigationBarHidden:NO];
    
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];                 
    thirdViewController.title = @"Troisième";
    
    FourthViewController *fourthViewController = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];                 
    fourthViewController.title = @"Quatrième";
    
    FifthViewController *fifthViewController = [[FifthViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
    UITabBarItem *tabBarItemFifth = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:5];
    fifthViewController.tabBarItem = tabBarItemFifth;
    
    SixthViewController *sixthViewController = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    UITabBarItem *tabBarItemSixth = [[UITabBarItem alloc] initWithTitle:@"Sixième" image:[UIImage imageNamed:@"17-bar-chart.png"] tag:6];
    sixthViewController.tabBarItem = tabBarItemSixth;
    
    _tabBarController.viewControllers = [NSArray arrayWithObjects:firstViewController, navigationController, thirdViewController, fourthViewController, fifthViewController, sixthViewController, nil];
    
    [_tabBarController.tabBar setTintColor:[UIColor redColor]];
    [_tabBarController.tabBar setSelectedImageTintColor:[UIColor grayColor]];
    
    [_window addSubview:_tabBarController.view];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
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
