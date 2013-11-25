//
//  CalculatorViewController.m
//  Calculator
//
//  Created by golden05 on 13-11-22.
//  Copyright (c) 2013年 golden05. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()


@end

@implementation CalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)acButton:(id)sender {
}

- (IBAction)zeroButton:(id)sender {
    if ([self.outputLabel.text  isEqual: @"0"]) {
        self.outputLabel.text = @"0";
    } else {
        self.outputLabel.text = [self.outputLabel.text stringByAppendingString:@"0"];
    }
}

- (IBAction)oneButton:(id)sender {
    if ([self.outputLabel.text  isEqual: @"0"]) {
        self.outputLabel.text = @"1";
    } else {
        self.outputLabel.text = [self.outputLabel.text stringByAppendingString:@"1"];
    }
}

@end
