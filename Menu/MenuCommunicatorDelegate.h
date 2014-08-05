//
//  MenuCommunicatorDelegate.h
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MenuCommunicatorDelegate
- (void)receivedFoodCategoriesJSON:(NSData *)objectNotation;
- (void)fetchingFoodCategoriesFailedWithError:(NSError *)error;
@end
