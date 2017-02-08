//
//  MenuCollectionViewCell.m
//  Iceberg
//
//  Created by Yonatan Becker on 1/26/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import "MenuCollectionViewCell.h"

@implementation MenuCollectionViewCell

-(void)setCellLabelWithString:(NSString *)String
{
    [_CellLabel setText:String];
    
        _CellLabel.layer.cornerRadius=5;
        _CellLabel.layer.masksToBounds=YES;
}
-(void) setCellImage:(UIImage *) Image
{
    [_CellImageView setImage:Image];
    
        _CellImageView.layer.cornerRadius=5;
        _CellImageView.layer.masksToBounds=YES;
}
@end
