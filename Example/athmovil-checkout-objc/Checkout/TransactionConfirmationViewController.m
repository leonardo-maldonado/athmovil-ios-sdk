//
//  TransactionConfirmationViewController.m
//  athm-checkout-demo-objc
//
//  Created by Cristopher Bautista on 7/10/18.
//  Copyright © 2018 EVERTEC. All rights reserved.
//

#import "TransactionConfirmationViewController.h"

@interface TransactionConfirmationViewController ()

@end

@implementation TransactionConfirmationViewController
@synthesize doneButton;
@synthesize iconImageView;
@synthesize primaryLabel;
@synthesize secondaryLabel;
@synthesize primaryTitle;
@synthesize secondaryTitle;
@synthesize iconImage;


+(TransactionConfirmationViewController*)initFromStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Checkout" bundle:nil];
    TransactionConfirmationViewController *myViewController = [storyboard instantiateViewControllerWithIdentifier:@"TransactionConfirmationViewController"];
    return myViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    /// Setup verifyButton UI
    self.doneButton.backgroundColor = [UIColor blueColor];
    self.doneButton.tintColor = [UIColor whiteColor];
    [self.doneButton setTitle:@"Done" forState: UIControlStateNormal];
    [self.doneButton.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
}

-(IBAction) doneButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateUI {
    iconImageView.image = self.iconImage;
    primaryLabel.text = self.primaryTitle;
    primaryLabel.textAlignment = NSTextAlignmentCenter;
    secondaryLabel.text = self.secondaryTitle;
    secondaryLabel.numberOfLines = 0;
    secondaryLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)viewWillAppear:(BOOL)animated {
    [self updateUI];
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
