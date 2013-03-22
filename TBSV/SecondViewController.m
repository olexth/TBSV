//
//  SecondViewController.m
//  TBSV
//
//  Created by Alexey Golub on 23.02.13.
//  Copyright (c) 2013 Alexey Golub. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

/////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - View lifecycle
/////////////////////////////////////////////////////////////////////////////////////////////////////////

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"SecondViewContoller";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Custom methods
/////////////////////////////////////////////////////////////////////////////////////////////////////////

@end
