//
//  FirstViewController.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+Glossy.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *TestButton;
@property (weak, nonatomic) IBOutlet UIProgressView *ProgressView;
@property (weak, nonatomic) IBOutlet UILabel *ProgressLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@property (weak, nonatomic) IBOutlet UIImageView *coverImage;

@end

