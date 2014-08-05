//
//  FoodCategory.h
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodCategory : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *text;
//@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *imageURL;
@property (strong, nonatomic) NSArray *foodNames;
//@property (strong, nonatomic) NSArray *foods;
@end
