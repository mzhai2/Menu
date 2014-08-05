//
//  MenuManagerDelegate.h
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MenuManagerDelegate
- (void)didReceiveFoodCategories:(NSArray *)foodCategories;
- (void)fetchingFoodCategoriesFailedWithError:(NSError *)error;
@end
