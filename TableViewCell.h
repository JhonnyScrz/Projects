//
//  TableViewCell.h
//  Iceberg
//
//  Created by Yonatan Becker on 2/7/16.
//  Copyright © 2016 Yonatan Becker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *TableViewCellLabel;
-(void) setCellLabelTxt : (NSString*) inputString;

@end
