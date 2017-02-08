//
//  ThirdViewController.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+Glossy.h"
#import "NumberOfFlavorsView.h"


@interface ThirdViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (weak, nonatomic) IBOutlet UIButton *Button500G;
@property (weak, nonatomic) IBOutlet UIButton *Button750G;
@property (weak, nonatomic) IBOutlet UIButton *Button1KG;
@property (weak, nonatomic) IBOutlet UIView *ContainerView;
@property (weak, nonatomic) IBOutlet UIView *ContainerView2;
@property (weak, nonatomic) IBOutlet UIView *ContainerView3;
//@property UIViewController *numberOfFlavorsView;




@property NSString *orderSize;


@end
