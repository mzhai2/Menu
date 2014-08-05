//
//  Food.m
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "Food.h"

@implementation Food

-(Food *)initWithAll: (NSString *)name :(NSString *) text :(NSString *) imageURL :(NSNumber *) price{
    Food *food = [self init];
    food.name = name;
    food.text = text;
    food.imageURL = imageURL;
    food.price = price;
    return food;
}

@end
