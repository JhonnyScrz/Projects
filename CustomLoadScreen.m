//
//  CustomLoadScreen.m
//  Iceberg
//
//  Created by Yonatan on 11/3/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "CustomLoadScreen.h"
#import <Parse/Parse.h>
#import "SecondViewController.h"
#import "AppDelegate.h"

@interface CustomLoadScreen ()

@end

@implementation CustomLoadScreen


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    // Initialize Parse.
    [Parse setApplicationId:@"loPlDRJ3tjjOvxSI5SaSaheI5VK3vsdHE9L0YHJV"
                  clientKey:@"dr4zIhLAqGmIMerhlVkk7Fb3HMU6qZFRbFKe2aeZ"];
    
    AppDelegate *MyappDelegate  = ((AppDelegate*)[UIApplication sharedApplication].delegate);
    
    
    
    
    
    
    _ArrayDairyFlavorNames = [[NSMutableArray alloc] init];
    _ArrayDairyFlavorPics = [[NSMutableArray alloc] init];
    _ArrayDairyFlavorDescription = [[NSMutableArray alloc] init];
    
    _ArraySorbetFlavorNames = [[NSMutableArray alloc] init];
    _ArraySorbetFlavorPics = [[NSMutableArray alloc] init];
    _ArraySorbetFlavorDescription = [[NSMutableArray alloc] init];
    
    _ArraySugarFreeFlavorNames = [[NSMutableArray alloc] init];
    _ArraySugarFreeFlavorPics = [[NSMutableArray alloc] init];
    _ArraySugarFreeFlavorDescription = [[NSMutableArray alloc] init];
    
    
    //Find all Flavors from parse
    PFQuery *FlavorsQuery = [PFQuery queryWithClassName:@"Flavours"];
    
    
    [FlavorsQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error)
     {
         if(error)
         {
             NSLog(@"%@", error);
         }
         for (PFObject *object in objects)
         {
             if ([object[@"Kind"] isEqual: @"Dairy"])
             {
                 // arrayChooser=0;
                 
                 [MyappDelegate.ArrayDairyFlavorNames addObject:object[@"Flavour"]];
                 [MyappDelegate.ArrayDairyFlavorDescription addObject:object[@"Description"]];
                 [MyappDelegate.ArrayDairyFlavorPics addObject:[MyappDelegate getParseImage:object]];
             }
             if ([object[@"Kind"] isEqual: @"Sorbet"])
             {
                 //  arrayChooser=3;
                 [MyappDelegate.ArraySorbetFlavorNames addObject:object[@"Flavour"]];
                 [MyappDelegate.ArraySorbetFlavorDescription addObject:object[@"Description"]];
                 [MyappDelegate.ArraySorbetFlavorPics addObject:[MyappDelegate getParseImage:object]];
             }
             if ([object[@"Kind"] isEqual: @"Sugar Free"])
             {
                 //   arrayChooser=6;
                 [MyappDelegate.ArraySugarFreeFlavorNames addObject:object[@"Flavour"]];
                 [MyappDelegate.ArraySugarFreeFlavorDescription addObject:object[@"Description"]];
                 [MyappDelegate.ArraySugarFreeFlavorPics addObject:[MyappDelegate getParseImage:object]];
             }
             
             NSLog(@"Added flavor %@",object[@"Flavour"]);
     
             
         }
         
         UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier: @"TabBarController"];
         [self presentViewController:controller animated:YES completion:nil];
         
     }];
}
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
