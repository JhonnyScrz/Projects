//
//  FirstViewController.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    AppDelegate *MyappDelegate  = ((AppDelegate*)[UIApplication sharedApplication].delegate);
    
    if ([MyappDelegate checkForInternet])
    {
    }
    else
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"No internet connection" message:@"Please enable the internet and restart the app" preferredStyle:UIAlertControllerStyleAlert];
        
        //        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
        //        {
        //            [self dismissViewControllerAnimated:YES completion:nil];
        //        }
        //                          ]
        //         ];
        
        [self presentViewController:alert animated:YES completion:nil];
    }

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIStoryboard *mainStoryboard = self.storyboard;
    UITabBarController *tabBarController = [mainStoryboard instantiateViewControllerWithIdentifier: @"TabBarController"];
    
    //UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    [[tabBarController tabBar] makeGlossy];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.32 green:0.14 blue:0.18 alpha:1.0]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.99 green:0.42 blue:0.03 alpha:1.0]];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIColor whiteColor], UITextAttributeTextColor,
                                                       nil] forState:UIControlStateNormal];
    
    UIColor *titleHighlightedColor = [UIColor colorWithRed:153/255.0 green:192/255.0 blue:48/255.0 alpha:1.0];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleHighlightedColor, UITextAttributeTextColor,
                                                       nil] forState:UIControlStateHighlighted];
   
  
  
    
    
   
   
    NSLog(@"ViewLoaded");
    [_coverImage makeGlossy];
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
