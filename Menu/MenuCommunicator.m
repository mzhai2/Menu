//
//  MenuCommunicator.m
//  Menu
//
//  Created by Mike Zhai on 8/1/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "MenuCommunicator.h"
#import "MenuCommunicatorDelegate.h"

#define PAGE_COUNT 20

@implementation MenuCommunicator

- (void)getMenu
{
    NSString *urlAsString = [NSString stringWithFormat:@"http://mutianzhai.com/menu/example"];
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        if (error) {
            [self.delegate fetchingFoodCategoriesFailedWithError:error];
        } else {
            [self.delegate receivedFoodCategoriesJSON:data];
        }
    }];
}

@end
