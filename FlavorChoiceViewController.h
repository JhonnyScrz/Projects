//
//  FlavorChoiceViewController.h
//  Iceberg
//
//  Created by Yonatan Becker on 2/3/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "ThirdViewController.h"
#import "NumberOfFlavorsView.h"
#import "TableViewCell.h"



@interface FlavorChoiceViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *TableView;

@property (weak, nonatomic) IBOutlet UIButton *ContinueButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;


@property (weak, nonatomic) IBOutlet UILabel *CurrentChosenLabel;
@property (weak, nonatomic) IBOutlet UIButton *CurrentChosenButton;
@property NSMutableArray *chosenFlavors;

@property NSString *orderSize;

@property (strong,nonatomic) NSMutableArray *ArrayOfButtons;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton1;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton2;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton3;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton4;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton5;
@property (weak, nonatomic) IBOutlet UIButton *ChooseButton6;

//parseStuff
@property  NSMutableArray *ArrayDairyFlavorNames;
@property NSMutableArray *ArraySorbetFlavorNames;
@property NSMutableArray *ArraySugarFreeFlavorNames;

@property int numberRecived;
-(void) setNumberOfLabelsAndButtons : (int) number;

@end
