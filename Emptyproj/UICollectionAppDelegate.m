//
//  UICollectionAppDelegate.m
//  Emptyproj
//
//  Created by User1 on 2014-05-12.
//  Copyright (c) 2014 GMolton. All rights reserved.
//

#import "UICollectionAppDelegate.h"

@implementation UICollectionAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController=[UIViewController new];
    UIView* mainview=self.window.rootViewController.view;
    UIView* v=[[UIView alloc]initWithFrame:CGRectMake(110,111,132,194)];
    UIView* v2=[[UIView alloc]initWithFrame:CGRectMake(0,0,132,10)];
    UIView* v3=[[UIView alloc]initWithFrame:CGRectMake(v2.bounds.size.width-20,v2.bounds.size.height-20,20,20)];
    //[mainview addSubview:v];
    v2.autoresizingMask =UIViewAutoresizingFlexibleWidth;
    v2.autoresizingMask =UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    
    mainview.backgroundColor=[UIColor blueColor];
    v.backgroundColor=[UIColor colorWithRed:1 green:.4 blue:.1 alpha:1];
    v2.backgroundColor=[UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    v3.backgroundColor=[UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    
    [mainview addSubview:v];
    [v addSubview:v2];
    [v2 addSubview:v3];
    //v2.transform=CGAffineTransformMakeTranslation(45*M_PI/180);
    
    CGRect r=v.bounds;
    r.size.width+=40;
    r.size.height-=50;
    v.bounds=r;
    
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
