//
//  NumberOfFlavorsView.h
//  Iceberg
//
//  Created by Yonatan Becker on 2/3/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "ThirdViewController.h"

@interface NumberOfFlavorsView : UIViewController
@property UIViewController* orderView;


@property NSString *orderSize;
@property (weak, nonatomic) IBOutlet UIButton *Button1;
@property (weak, nonatomic) IBOutlet UIButton *Button2;
@property (weak, nonatomic) IBOutlet UIButton *Button3;
@property (weak, nonatomic) IBOutlet UIButton *Button4;
@property (weak, nonatomic) IBOutlet UIButton *Button5;
@property (weak, nonatomic) IBOutlet UIButton *Button6;

@property (weak, nonatomic) IBOutlet UIButton *BackButton;


@property (nonatomic) int NumberOfFlavors;

-(void) MoveToNextPage;

@end
