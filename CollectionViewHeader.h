//
//  CollectionViewHeader.h
//  Iceberg
//
//  Created by Yonatan Becker on 1/26/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewHeader : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *backRoundImage;

@end
