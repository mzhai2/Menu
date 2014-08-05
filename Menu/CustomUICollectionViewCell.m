//
//  CustomUICollectionViewCell.m
//  Menu
//
//  Created by Mike Zhai on 7/27/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "CustomUICollectionViewCell.h"

@implementation CustomUICollectionViewCell

- (IBAction)addToCartButtonPressed:(id)sender {
    UIButton *btn = (UIButton *)sender;
    NSLog(@"%@", btn.currentTitle);
    
}
@end
