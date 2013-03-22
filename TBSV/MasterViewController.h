//
//  MasterViewController.h
//  TBSV
//
//  Created by Alexey Golub on 23.02.13.
//  Copyright (c) 2013 Alexey Golub. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
