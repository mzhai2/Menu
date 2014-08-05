//
//  Factory.m
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(NSArray *)foodCategories {

    FoodCategory *meatCategory = [[FoodCategory alloc] init];
    meatCategory.name = @"Meats";
    meatCategory.text = @"The best meat";
    meatCategory.imageURL = @"http://mutianzhai.com/menu/meat.jpg";
    meatCategory.foodNames = [[NSArray alloc] initWithObjects:@"Chicken", @"Beef", nil];
    

    FoodCategory *seafoodCategory = [[FoodCategory alloc] init];
    seafoodCategory.name = @"Seafood";
    seafoodCategory.text = @"The best seafood";
    seafoodCategory.imageURL = @"http://mutianzhai.com/menu/seafood.jpg";
    seafoodCategory.foodNames = [[NSArray alloc] initWithObjects:@"Squid", @"Tuna", nil];
    NSArray *foodCategories = [[NSArray alloc] initWithObjects:meatCategory, seafoodCategory, nil];
    return foodCategories;
}

-(NSArray *)foods {
    Food *squid = [[Food alloc] init];
    squid.name = @"Squid";
    squid.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    squid.imageURL = @"http://mutianzhai.com/menu/squid.jpg";
    squid.price = [NSNumber numberWithDouble:11.50];
    
    Food *tuna = [[Food alloc] init];
    tuna.name = @"Tuna";
    tuna.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    tuna.imageURL = @"http://mutianzhai.com/menu/tuna.jpg";
    tuna.price = [NSNumber numberWithDouble:15.50];
    
    Food *chicken = [[Food alloc] init];
    chicken.name = @"Chicken";
    chicken.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    chicken.imageURL = @"http://mutianzhai.com/menu/chicken.jpg";
    chicken.price = [NSNumber numberWithDouble:7.50];
    
    Food *beef = [[Food alloc] init];
    beef.name = @"Beef";
    beef.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    beef.imageURL = @"http://mutianzhai.com/menu/beef.jpg";
    beef.price = [NSNumber numberWithDouble:8.50];
    
    NSArray *foods = [[NSArray alloc] initWithObjects:squid, tuna, chicken, beef, nil];
    return foods;
}

@end
