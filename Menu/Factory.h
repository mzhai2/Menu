//
//  Factory.h
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "FoodCategory.h"
#import "Food.h"

@interface Factory : NSObject

-(NSArray *)foodCategories;
-(NSArray *)foods;

@end
