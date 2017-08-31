//
//  CashlezViewController.m
//  CashlezTest
//
//  Created by Paybill Indonesia on 8/30/17.
//  Copyright © 2017 Emozen. All rights reserved.
//

#import "CashlezViewController.h"
#import "CalculatorViewController.h"

@interface CashlezViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewRound;
@property (weak, nonatomic) IBOutlet UIButton *bayarButton;



@end

@implementation CashlezViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CLLocationManager *locationManager = [[CLLocationManager alloc]init];
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    _imageViewRound.layer.cornerRadius = 75;
    _bayarButton.layer.cornerRadius = 18.5;
    _bayarButton.layer.borderWidth = 1.0f;
    _bayarButton.layer.borderColor = [UIColor blackColor].CGColor;
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    [gestureRecognizer setDirection:UISwipeGestureRecognizerDirectionUp];
    [locationManager requestWhenInUseAuthorization];
    [locationManager startUpdatingLocation];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)swipeHandler:(UISwipeGestureRecognizer *)recognizer {
    CalculatorViewController *tvc = [[CalculatorViewController alloc] init];
    self.providesPresentationContextTransitionStyle = YES;
    self.definesPresentationContext = YES;
    [tvc setModalPresentationStyle:UIModalPresentationOverCurrentContext];
    
    [self.navigationController presentViewController:tvc animated:YES completion:nil];
}


#pragma mark - CLLocationManagerDelegate


@end
