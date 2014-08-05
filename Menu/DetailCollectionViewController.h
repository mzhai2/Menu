//
//  DetailCollectionViewController.h
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Factory.h"
#import "CustomUICollectionViewCell.h"


@interface DetailCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) FoodCategory* detailItem;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundUIImage;

@end
