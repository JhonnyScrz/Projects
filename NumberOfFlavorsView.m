//
//  NumberOfFlavorsView.m
//  Iceberg
//
//  Created by Yonatan Becker on 2/3/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "NumberOfFlavorsView.h"
#import "ThirdViewController.h"
#import "FlavorChoiceViewController.h"
#import "UIButton+Glossy.h"

@implementation NumberOfFlavorsView
-(void)viewDidLoad
{
    NSMutableArray* ArrayForButtons = [[NSMutableArray alloc]initWithObjects:_Button1,_Button2,_Button3,_Button4,_Button5,_Button6, nil];
    [self.view makeGlossy];

    

    //self.navigationController.navigationBar.barTintColor=[UIColor redColor];
    
    _BackButton.layer.cornerRadius=5;
    _BackButton.layer.masksToBounds=YES;
    
    
    int numberUsedFforLoop=1;
    
    //[self.Button1 makeGlossy];
    for (UIButton* button in ArrayForButtons)
    {
        // Draw a custom gradient
        CAGradientLayer *btnGradient = [CAGradientLayer layer];
        btnGradient.frame = button.bounds;
        button.layer.cornerRadius=15;
        button.layer.masksToBounds=YES;
        
        [button makeGlossy];
         [_BackButton makeGlossy];
       
        
        numberUsedFforLoop++;
    }

    
    
}

- (IBAction)Button1Pressed:(id)sender
{
    self.NumberOfFlavors=1;
    [self MoveToNextPage];
}
- (IBAction)Button2Pressed:(id)sender
{
    self.NumberOfFlavors=2;
    [self MoveToNextPage];
}
- (IBAction)Button3Pressed:(id)sender
{
    self.NumberOfFlavors=3;
    [self MoveToNextPage];
}
- (IBAction)Button4Pressed:(id)sender
{
    self.NumberOfFlavors=4;
    [self MoveToNextPage];
}
- (IBAction)Button5Pressed:(id)sender
{
    self.NumberOfFlavors=5;
    [self MoveToNextPage];
}
- (IBAction)Button6Pressed:(id)sender
{
    self.NumberOfFlavors=6;
    [self MoveToNextPage];
    
    NSLog(@"Button6Pressed");
}
- (IBAction)BackButtonPressed:(id)sender
{}
-(void) MoveToNextPage
{
    [self performSegueWithIdentifier:@"toFlavorChoiceViewController" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"toFlavorChoiceViewController"])
    {
        
        // Get reference to the destination view controller
        FlavorChoiceViewController *flavorChoiceView = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        flavorChoiceView.numberRecived=_NumberOfFlavors;
        flavorChoiceView.orderSize=self.orderSize;
        
        
    }
    


}


@end
