//
//  FoodCategoryBuilder.h
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodCategoryBuilder : NSObject

+ (NSArray *)foodCategoriesFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end
