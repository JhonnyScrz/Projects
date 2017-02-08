//
//  SecondViewController.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "CollectionViewHeader.h"
#import "MenuCollectionViewCell.h"


@interface SecondViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;

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

@property NSString *FlavorNameString;
@property UIImage *FlavorImage;
@property NSString *FlavorDescriptionString;







@end

