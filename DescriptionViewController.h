//
//  DescriptionViewController.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/26/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

//@interface DescriptionViewController : UIViewController
@interface DescriptionViewController : SecondViewController



@property (weak, nonatomic) IBOutlet UILabel *FlavorTitle;
@property (weak, nonatomic) IBOutlet UIImageView *FlavorImageView;
@property (weak, nonatomic) IBOutlet UITextView *FlavorDescription;
@property (weak, nonatomic) IBOutlet UIButton *BackButton;


-(void) setFlavorInfo;

@end
