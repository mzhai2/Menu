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

    
    Food *chicken = [[Food alloc] init];
    chicken.name = @"Chicken";
    chicken.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
//    chicken.image = [UIImage imageNamed:@"chicken.jpg"];
    chicken.imageURL = @"http://mutianzhai.com/menu/chicken.jpg";
    chicken.price = [NSNumber numberWithDouble:7.50];
    
    Food *beef = [[Food alloc] init];
    beef.name = @"Beef";
    beef.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
//    beef.image = [UIImage imageNamed:@"beef.jpg"];
    beef.imageURL = @"http://mutianzhai.com/menu/beef.jpg";
    beef.price = [NSNumber numberWithDouble:8.50];
    
    FoodCategory *meatCategory = [[FoodCategory alloc] init];
    meatCategory.name = @"Meats";
    meatCategory.text = @"The best meat";
//    meatCategory.image = [UIImage imageNamed:@"meat.jpg"];
    meatCategory.imageURL = @"http://mutianzhai.com/menu/meat.jpg";
    meatCategory.foods = [[NSArray alloc] initWithObjects:chicken, beef, nil];
    
    Food *squid = [[Food alloc] init];
    squid.name = @"Squid";
    squid.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
//    squid.image = [UIImage imageNamed:@"squid.jpg"];
    squid.imageURL = @"http://mutianzhai.com/menu/squid.jpg";
    squid.price = [NSNumber numberWithDouble:11.50];
    
    Food *tuna = [[Food alloc] init];
    tuna.name = @"Tuna";
    tuna.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
//    tuna.image = [UIImage imageNamed:@"tuna.jpg"];
    tuna.imageURL = @"http://mutianzhai.com/menu/tuna.jpg";
    tuna.price = [NSNumber numberWithDouble:15.50];
    
    FoodCategory *seafoodCategory = [[FoodCategory alloc] init];
    seafoodCategory.name = @"Seafood";
    seafoodCategory.text = @"The best seafood";
//    seafoodCategory.image = [UIImage imageNamed:@"seafood.jpg"];
    seafoodCategory.imageURL = @"http://mutianzhai.com/menu/seafood.jpg";
    seafoodCategory.foods = [[NSArray alloc] initWithObjects:squid, tuna, nil];
    
    NSArray *foodCategories = [[NSArray alloc] initWithObjects:meatCategory, seafoodCategory, nil];
    return foodCategories;
}

@end
