//
//  SecondViewController.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/24/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "SecondViewController.h"
#import "DescriptionViewController.h"
#import "AppDelegate.h"
#import "CustomLoadScreen.h"




@interface SecondViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation SecondViewController

-(void)viewDidAppear:(BOOL)animated
{

    

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    AppDelegate *MyappDelegate  = ((AppDelegate*)[UIApplication sharedApplication].delegate);
    

    
    _ArrayDairyFlavorNames = MyappDelegate.ArrayDairyFlavorNames;
    _ArrayDairyFlavorPics = MyappDelegate.ArrayDairyFlavorPics;
    _ArrayDairyFlavorDescription = MyappDelegate.ArrayDairyFlavorDescription;
    
    _ArraySorbetFlavorNames = MyappDelegate.ArraySorbetFlavorNames;
    _ArraySorbetFlavorPics = MyappDelegate.ArraySorbetFlavorPics;
    _ArraySorbetFlavorDescription = MyappDelegate.ArraySorbetFlavorDescription;
    
    _ArraySugarFreeFlavorNames = MyappDelegate.ArraySugarFreeFlavorNames;
    _ArraySugarFreeFlavorPics = MyappDelegate.ArraySugarFreeFlavorPics;
    _ArraySugarFreeFlavorDescription = MyappDelegate.ArraySugarFreeFlavorDescription;
    

    
    
   
   
 
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section==0)
        return [_ArrayDairyFlavorNames count];
    if (section==1)
        return [_ArraySorbetFlavorNames count];
    if (section==2)
        return [_ArraySugarFreeFlavorNames count];
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    MenuCollectionViewCell *cell= [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImage *imageForCell;
    NSString *FlavorTextForCell;
    switch (indexPath.section)
    {
        case 0:
            FlavorTextForCell= _ArrayDairyFlavorNames[indexPath.row];
            imageForCell = _ArrayDairyFlavorPics[indexPath.row];
            break;
        case 1:
            FlavorTextForCell= _ArraySorbetFlavorNames[indexPath.row];
            imageForCell = _ArraySorbetFlavorPics[indexPath.row];
            break;
        case 2:
            FlavorTextForCell= _ArraySugarFreeFlavorNames[indexPath.row];
            imageForCell = _ArraySugarFreeFlavorPics[indexPath.row];
            break;
        default:
            break;
    }
    

    [cell setCellImage:imageForCell];
    [cell setCellLabelWithString:FlavorTextForCell];
    return cell;

}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}


-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader)
    {
        CollectionViewHeader *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        
        
        NSString *title;
        switch (indexPath.section)
        {
            case 0:title = @"Dairy";break;
            case 1:title = @"Sorbet";break;
            case 2:title = @"SugarFree/Vegan";break;
            default:break;
        }
        headerView.title.text = title;
        UIImage *headerImage = [UIImage imageNamed:@"header_banner.png"];
        headerView.backRoundImage.image= headerImage;
        
            headerView.layer.cornerRadius=5;
            headerView.layer.masksToBounds=YES;
        reusableview = headerView;
        
    }
    
    if (kind == UICollectionElementKindSectionFooter)
    {
        UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footerView" forIndexPath:indexPath];
        reusableview = footerview;
    }
    
    return reusableview;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section)
    
    {
        case 0:
            self.FlavorNameString = _ArrayDairyFlavorNames[indexPath.row];
            self.FlavorImage =_ArrayDairyFlavorPics [indexPath.row];
            self.FlavorDescriptionString = _ArrayDairyFlavorDescription [indexPath.row];
            break;
        case 1:
            self.FlavorNameString = _ArraySorbetFlavorNames[indexPath.row];
            self.FlavorImage =_ArraySorbetFlavorPics [indexPath.row];
            self.FlavorDescriptionString = _ArraySorbetFlavorDescription [indexPath.row];
            break;
        case 2:
            self.FlavorNameString = _ArraySugarFreeFlavorNames[indexPath.row];
            self.FlavorImage =_ArraySugarFreeFlavorPics [indexPath.row];
            self.FlavorDescriptionString = _ArraySugarFreeFlavorDescription [indexPath.row];
            break;
        default:
            break;
    }
   
    [self performSegueWithIdentifier:@"toDescriptionViewController" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   if ([[segue identifier]isEqualToString:@"toDescriptionViewController"])
   {
       DescriptionViewController * descriptionViewController = [segue destinationViewController];
       
       
       descriptionViewController.FlavorNameString=self.FlavorNameString;
       descriptionViewController.FlavorDescriptionString=self.FlavorDescriptionString;
       descriptionViewController.FlavorImage=self.FlavorImage;
   }
}



@end
