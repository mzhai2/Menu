//
//  MasterViewController.h
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FoodCategory.h"
#import "MenuManager.h"
#import "MenuCommunicator.h"

@class DetailCollectionViewController;

@interface MasterViewController : UITableViewController <MenuManagerDelegate>

@property (strong, nonatomic) NSArray *foodCategories;
@property (strong, nonatomic) MenuManager *manager;


@property (strong, nonatomic) DetailCollectionViewController *detailCollectionViewController;


@end

