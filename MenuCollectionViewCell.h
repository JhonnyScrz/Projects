//
//  MenuCollectionViewCell.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/26/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *CellLabel;
@property (weak, nonatomic) IBOutlet UIImageView *CellImageView;

-(void) setCellImage:(UIImage *) Image;
-(void)setCellLabelWithString:(NSString *) String;

@end
