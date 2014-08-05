//
//  MenuManager.h
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuManagerDelegate.h"
#import "MenuCommunicatorDelegate.h"
@class MenuCommunicator;

@interface MenuManager : NSObject<MenuCommunicatorDelegate>
@property (strong, nonatomic) MenuCommunicator *communicator;
@property (weak, nonatomic) id<MenuManagerDelegate> delegate;

- (void)fetchFoodCategories;
@end
