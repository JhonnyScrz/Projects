//
//  ThirdViewController.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "ThirdViewController.h"


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad
{
   	
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];

    NSMutableArray* buttonsForBoxSize= [NSMutableArray arrayWithObjects:_Button500G,_Button750G,_Button1KG, nil];
    [super viewDidLoad];
    
    for (UIButton *button in buttonsForBoxSize)
    {
        button.layer.cornerRadius=10;
        button.layer.masksToBounds=YES;
        [button makeGlossy];
       
        
        
    }
    _TitleLabel.layer.cornerRadius=10;
    _TitleLabel.layer.masksToBounds=YES;
   // [_TitleLabel makeGlossy];
    
}

- (IBAction)Button500GPressed:(id)sender
{
    _orderSize  = (@"500G");
    [self performSegueWithIdentifier:@"toNumberViewController" sender:self];
}
- (IBAction)Button750GPressed:(id)sender
{
        _orderSize  = (@"750G");
    [self performSegueWithIdentifier:@"toNumberViewController" sender:self];
}
- (IBAction)Button1KGPressed:(id)sender
{
        _orderSize  = (@"1KG");
    [self performSegueWithIdentifier:@"toNumberViewController" sender:self];
}
//-(void)setNumberOfFlavors:(int)NumberOfFlavors
//{
//    _NumberOfFlavors= NumberOfFlavors;
//    _ContainerView.hidden=NO;
//}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"toNumberViewController"])
    {
        NumberOfFlavorsView *numberOfFlavorsView = [segue destinationViewController];
        numberOfFlavorsView.orderSize=self.orderSize;
    }

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
