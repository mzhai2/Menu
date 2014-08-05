//
//  DetailCollectionViewController.m
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "DetailCollectionViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>


@implementation DetailCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.title = [self.detailItem text];
    }
    self.backgroundUIImage.image = [UIImage imageNamed:@"wood.jpg"];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.detailItem.foods count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellID = @"CellID";
    CustomUICollectionViewCell *myCell = (CustomUICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:CellID forIndexPath:indexPath];
    Food *food = [self.detailItem.foods objectAtIndex:indexPath.item];
//    myCell.imageInCell.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[food objectForKey:@"imageURL"]]]];
    [myCell.imageInCell sd_setImageWithURL:[NSURL URLWithString:[food objectForKey:@"imageURL"]]
                      placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    myCell.labelInCell.text = [food objectForKey:@"text"];
    myCell.priceInCell.text = [NSString stringWithFormat:@"$%.2f", [[food objectForKey:@"price"] doubleValue]];
    return myCell;
}


@end
