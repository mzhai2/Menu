//
//  MasterViewController.m
//  Menu
//
//  Created by Mike Zhai on 7/26/14.
//  Copyright (c) 2014 Zhai. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailCollectionViewController.h"
#import "Factory.h"
#import "FoodCategory.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface MasterViewController ()

@property NSArray *objects;
@property NSArray *foods;
@end

@implementation MasterViewController
            
- (void)awakeFromNib {
    [super awakeFromNib];
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.detailCollectionViewController = (DetailCollectionViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    Factory *factory = [[Factory alloc] init];
    self.objects = [factory foodCategories];
    self.foods = [factory foods];
    
/*    self.manager = [[MenuManager alloc] init];
    self.manager.communicator = [[MenuCommunicator alloc] init];
    self.manager.communicator.delegate = self.manager;
    self.manager.delegate = self;
    [self.manager fetchFoodCategories]; */
}

- (void)didReceiveFoodCategories:(NSArray *)foodCategories {
    self.objects = foodCategories;
    [self.tableView reloadData];
}

- (void)fetchingFoodCategoriesFailedWithError:(NSError *)error {
    NSLog(@"Error %@; %@", error, [error localizedDescription]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FoodCategory *object = self.objects[indexPath.row];
        DetailCollectionViewController *controller = (DetailCollectionViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
//        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    FoodCategory *object = self.objects[indexPath.row];
    cell.textLabel.text = object.name;
//    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:object.imageURL]]];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:object.imageURL]
                   placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


@end
