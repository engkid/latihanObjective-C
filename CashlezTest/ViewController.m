//
//  ViewController.m
//  CashlezTest
//
//  Created by Paybill Indonesia on 8/30/17.
//  Copyright © 2017 Emozen. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 65, self.view.frame.size.width, 50)];
    [view setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:view];
    //[self setNav];
}

-(void)setNav {
    UINavigationBar* navbar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    
    UINavigationItem* navItem = [[UINavigationItem alloc] initWithTitle:@"karthik"];
    [navbar setBarTintColor:[UIColor redColor]];
    UIBarButtonItem* cancelBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(onTapCancel:)];
    navItem.leftBarButtonItem = cancelBtn;
    
    UIBarButtonItem* doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(onTapDone:)];
    navItem.rightBarButtonItem = doneBtn;
    
    [navbar setItems:@[navItem]];
    [self.view addSubview:navbar];
}

-(void)onTapDone:(UIBarButtonItem*)item{
    
}

-(void)onTapCancel:(UIBarButtonItem*)item{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
