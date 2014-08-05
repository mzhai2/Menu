//
//  CustomUICollectionViewCell.h
//  Menu
//
//  Created by Mike Zhai on 7/27/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUICollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageInCell;
@property (strong, nonatomic) IBOutlet UILabel *labelInCell;
@property (strong, nonatomic) IBOutlet UILabel *priceInCell;
- (IBAction)addToCartButtonPressed:(UIButton *)sender;

@end
