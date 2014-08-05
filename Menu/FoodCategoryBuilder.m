//
//  FoodCategoryBuilder.m
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "FoodCategoryBuilder.h"
#import "FoodCategory.h"

@implementation FoodCategoryBuilder

+ (NSArray *)foodCategoriesFromJSON:(NSData *)objectNotation error:(NSError **)error {
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    if (localError !=nil) {
        *error = localError;
        return nil;
    }
    
//    for (int n = 0; n < [foodCategories count]; n++)
//    {
//        NSArray *foods = [parsedObject objectForKey:@"Foods"];
//        [foodCategories addObject:foods];
//    }
    
    NSMutableArray *foodCategories = [[NSMutableArray alloc] init];
    NSMutableArray *results = [parsedObject valueForKey:@"results"];
    
    for (NSDictionary *foodCategoryDic in results) {
        FoodCategory *foodCategory = [[FoodCategory alloc] init];
        for (NSString *key in foodCategoryDic) {
            if ([foodCategory respondsToSelector:NSSelectorFromString(key)]) {
                [foodCategory setValue:[foodCategoryDic valueForKey:key] forKey:key];
            }
        }
        [foodCategories addObject:foodCategory];
    }
    return foodCategories;
}
@end
