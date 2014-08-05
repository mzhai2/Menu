//
//  MenuManager.m
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "MenuManager.h"
#import "FoodCategoryBuilder.h"
#import "MenuCommunicator.h"

@implementation MenuManager
- (void)fetchFoodCategories {
    [self.communicator getMenu];
}
#pragma mark - MenuCommunicatorDelegate

- (void)receivedFoodCategoriesJSON:(NSData *)objectNotation {
        NSError *error = nil;
    NSArray *foodCategories = [FoodCategoryBuilder foodCategoriesFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingFoodCategoriesFailedWithError:error];
    } else {
        [self.delegate didReceiveFoodCategories:foodCategories];
    }
}
- (void)fetchingFoodCategoriesFailedWithError:(NSError *)error {
    [self.delegate fetchingFoodCategoriesFailedWithError:error];
}

@end
