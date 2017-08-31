//
//  CalculatorViewController.m
//  CashlezTest
//
//  Created by Paybill Indonesia on 8/31/17.
//  Copyright © 2017 Emozen. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@property (strong, nonatomic) NSString *pinString;
@property (weak, nonatomic) IBOutlet UITextField *pinTextField;

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    [gestureRecognizer setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)swipeHandler:(UISwipeGestureRecognizer *)recognizer {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didTouchUpPinButton:(UIButton *)sender {
    self.pinString = [self.pinString stringByAppendingString:[NSString stringWithFormat:@"%@", sender.currentTitle]];
    NSLog(@"iyeu nu dipencetan wa => %@", [NSString stringWithFormat:@"%@", sender.currentTitle]);
    self.pinTextField.text = self.pinString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
