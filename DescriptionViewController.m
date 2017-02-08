//
//  DescriptionViewController.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/26/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "DescriptionViewController.h"


@implementation DescriptionViewController
-(void)viewDidLoad
{
    _FlavorTitle.layer.cornerRadius=10;
    _FlavorTitle.layer.masksToBounds=YES;
    _FlavorImageView.layer.cornerRadius=10;
    _FlavorImageView.layer.masksToBounds=YES;
    [self setFlavorInfo];

}
-(void) setFlavorInfo;
{
    self.FlavorImageView.image=self.FlavorImage;
    self.FlavorTitle.text=self.FlavorNameString;
    self.FlavorDescription.text=self.FlavorDescriptionString;
}


@end
