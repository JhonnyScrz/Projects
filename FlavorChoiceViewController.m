//
//  FlavorChoiceViewController.m
//  Iceberg
//
//  Created by Yonatan Becker on 2/3/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "FlavorChoiceViewController.h"
#import "SecondViewController.h"
#import "TableViewCell.h"
#import "AppDelegate.h"
#import "ReviewView.h"

@interface FlavorChoiceViewController ()<UITableViewDelegate,UITableViewDataSource>

@end
@implementation FlavorChoiceViewController



-(void)viewDidLoad
{
    
    AppDelegate *MyappDelegate  = ((AppDelegate*)[UIApplication sharedApplication].delegate);
    //initializing arrays
    

    _chosenFlavors= [[NSMutableArray alloc] init];
    
    _ArrayDairyFlavorNames = MyappDelegate.ArrayDairyFlavorNames;
    _ArraySorbetFlavorNames = MyappDelegate.ArraySorbetFlavorNames;
    _ArraySugarFreeFlavorNames = MyappDelegate.ArraySugarFreeFlavorNames;
    

    
    _ArrayOfButtons = [[NSMutableArray alloc]init];
    [_ArrayOfButtons addObject:_ChooseButton1];
    [_ArrayOfButtons addObject:_ChooseButton2];
    [_ArrayOfButtons addObject:_ChooseButton3];
    [_ArrayOfButtons addObject:_ChooseButton4];
    [_ArrayOfButtons addObject:_ChooseButton5];
    [_ArrayOfButtons addObject:_ChooseButton6];
    
  
    for ( UIButton  *  button in _ArrayOfButtons)
    {
        button.layer.cornerRadius= 5;
        button.layer.masksToBounds=YES;
        [button makeGlossy];
    }
    _TableView.layer.cornerRadius=5;
    _TableView.layer.masksToBounds=YES;
    
    [_ContinueButton.titleLabel setAdjustsFontSizeToFitWidth:YES];
    _ContinueButton.layer.cornerRadius=5;
    _ContinueButton.layer.masksToBounds=YES;
    _backButton.layer.cornerRadius=5;
    _backButton.layer.masksToBounds=YES;
    [_backButton makeGlossy];
    [_ContinueButton makeGlossy];
    
    [self setNumberOfLabelsAndButtons:_numberRecived];
    
    
    
    

}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    
    NSString *FlavorTextForCell;
    switch (indexPath.section)
    {
        case 0:FlavorTextForCell= _ArrayDairyFlavorNames[indexPath.row];
            break;
        case 1:FlavorTextForCell= _ArraySorbetFlavorNames[indexPath.row];
            break;
        case 2:FlavorTextForCell= _ArraySugarFreeFlavorNames[indexPath.row];
            break;
        default:
            break;
    }
    [Cell setCellLabelTxt:FlavorTextForCell];
    Cell.layer.cornerRadius=3;
    Cell.layer.masksToBounds=YES;
    return Cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
        return [_ArrayDairyFlavorNames count];
    if (section==1)
        return [_ArraySorbetFlavorNames count];
    if (section==2)
        return [_ArraySugarFreeFlavorNames count];
    return 1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *selectedCell;
    selectedCell=[tableView cellForRowAtIndexPath:indexPath];
    _CurrentChosenButton.titleLabel.text=selectedCell.TableViewCellLabel.text;
    [_chosenFlavors addObject:selectedCell.TableViewCellLabel.text];
    _TableView.hidden=YES;
}

- (IBAction)ChooseFlavorButtonPressed:(id)sender
{
    
    NSInteger tagNumber=((UIButton*)sender).tag;
    _TableView.hidden=NO;
    _CurrentChosenButton= _ArrayOfButtons[tagNumber];
    _CurrentChosenButton.titleLabel.textAlignment= NSTextAlignmentCenter;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *title;

    switch (section)
    {
        case 0:title= @"Shamenet";break;
            case 1:title= @"Sorbet";break;
            case 2:title= @"Sugar Free";break;
        default:break;
    }
    return title;
}

- (IBAction)ContinueButtonPressed:(id)sender
{
   [self performSegueWithIdentifier:@"toReviewView" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([[segue identifier] isEqualToString:@"toReviewView"])
    {
        // Get reference to the destination view controller
        ReviewView *reviewViewController = [segue destinationViewController];
        
        reviewViewController.orderSize=self.orderSize;
        reviewViewController.chosenFlavors=self.chosenFlavors;
        
        // Pass any objects to the view controller here, like...
        //flavorChoiceView.numberRecived=_NumberOfFlavors;
    }
}

-(void) setNumberOfLabelsAndButtons :(int) number
{
    for (int i=0;i<6;i++)
    {
        ((UIButton*)_ArrayOfButtons[i]).hidden=YES;
        
        if (i<number)
        {
            ((UIButton*)_ArrayOfButtons[i]).hidden=NO;
        }
    }
}


@end

