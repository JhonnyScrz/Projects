//
//  AppDelegate.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "UIButton+Glossy.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property BOOL didFinishLoadingFromBackround;

@property NSMutableArray *ArrayOfFlavorArrays;

@property  NSMutableArray *ArrayDairyFlavorNames;
@property  NSMutableArray *ArrayDairyFlavorPics;
@property  NSMutableArray *ArrayDairyFlavorDescription;

@property NSMutableArray *ArraySorbetFlavorNames;
@property NSMutableArray *ArraySorbetFlavorPics;
@property NSMutableArray *ArraySorbetFlavorDescription;

@property NSMutableArray *ArraySugarFreeFlavorNames;
@property NSMutableArray *ArraySugarFreeFlavorPics;
@property NSMutableArray *ArraySugarFreeFlavorDescription;

-(BOOL) checkForInternet;
-(UIImage *) getParseImage:(PFObject*)object;


@end

