//
//  AppDelegate.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import "Reachability.h"
#import "SecondViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL) checkForInternet
{
    BOOL isInternet=YES;
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    
    if (networkStatus == NotReachable)
    {
        NSLog(@"There IS NO internet connection");
        isInternet=NO;
    }
    else
    {
        NSLog(@"There IS internet connection");
    }
    return isInternet;
}
-(UIImage *) getParseImage:(PFObject*)object
{
    PFFile *imageFile=object[@"Image"];
    NSData *imageData = [imageFile getData];
    UIImage *image = [UIImage imageWithData:imageData];
    return image;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
//    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
//    [[tabBarController tabBar] makeGlossy];
//    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.32 green:0.14 blue:0.18 alpha:1.0]];
//    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.99 green:0.42 blue:0.03 alpha:1.0]];
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
//                                                       [UIColor whiteColor], UITextAttributeTextColor,
//                                                       nil] forState:UIControlStateNormal];
//    
//    UIColor *titleHighlightedColor = [UIColor colorWithRed:153/255.0 green:192/255.0 blue:48/255.0 alpha:1.0];
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
//                                                       titleHighlightedColor, UITextAttributeTextColor,
//                                                       nil] forState:UIControlStateHighlighted];
    
    
    // Initialize Parse.
    [Parse setApplicationId:@"loPlDRJ3tjjOvxSI5SaSaheI5VK3vsdHE9L0YHJV"
                  clientKey:@"dr4zIhLAqGmIMerhlVkk7Fb3HMU6qZFRbFKe2aeZ"];
    
    
    _ArrayDairyFlavorNames = [[NSMutableArray alloc] init];
    _ArrayDairyFlavorPics = [[NSMutableArray alloc] init];
    _ArrayDairyFlavorDescription = [[NSMutableArray alloc] init];
    
    _ArraySorbetFlavorNames = [[NSMutableArray alloc] init];
    _ArraySorbetFlavorPics = [[NSMutableArray alloc] init];
    _ArraySorbetFlavorDescription = [[NSMutableArray alloc] init];
    
    _ArraySugarFreeFlavorNames = [[NSMutableArray alloc] init];
    _ArraySugarFreeFlavorPics = [[NSMutableArray alloc] init];
    _ArraySugarFreeFlavorDescription = [[NSMutableArray alloc] init];
    
    NSArray *objects;
    //int FlavorCount=0;
    
    //Find all Flavors from parse
    PFQuery *FlavorsQuery = [PFQuery queryWithClassName:@"Flavours"];
    
  
//    [FlavorsQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error)
//    {
//        if(error)
//        {
//            NSLog(@"%@", error);
//        }
//        for (PFObject *object in objects)
//        {
//            if ([object[@"Kind"] isEqual: @"Dairy"])
//            {
//                // arrayChooser=0;
//                [self.ArrayDairyFlavorNames addObject:object[@"Flavour"]];
//                [_ArrayDairyFlavorDescription addObject:object[@"Description"]];
//                [_ArrayDairyFlavorPics addObject:[self getParseImage:object]];
//            }
//            if ([object[@"Kind"] isEqual: @"Sorbet"])
//            {
//                //  arrayChooser=3;
//                [_ArraySorbetFlavorNames addObject:object[@"Flavour"]];
//                [_ArraySorbetFlavorDescription addObject:object[@"Description"]];
//                [_ArraySorbetFlavorPics addObject:[self getParseImage:object]];
//            }
//            if ([object[@"Kind"] isEqual: @"Sugar Free"])
//            {
//                //   arrayChooser=6;
//                [_ArraySugarFreeFlavorNames addObject:object[@"Flavour"]];
//                [_ArraySugarFreeFlavorDescription addObject:object[@"Description"]];
//                [_ArraySugarFreeFlavorPics addObject:[self getParseImage:object]];
//            }
//            
//            NSLog(@"Added flavor %@",object[@"Flavour"]);
//            //self presentViewController
//            //Remove LoadingScreen
//            //FlavorCount++;
//        }
//
//    }];
    


    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
    {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
