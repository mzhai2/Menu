//
//  MenuCommunicator.h
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MenuCommunicatorDelegate;

@interface MenuCommunicator : NSObject
@property (weak, nonatomic) id<MenuCommunicatorDelegate> delegate;

- (void)getMenu;
@end
