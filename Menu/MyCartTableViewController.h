//
//  MyCartTableViewController.h
//  Menu
//
//  Created by Mike Zhai on 8/2/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCartTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *orderItems;

@end
