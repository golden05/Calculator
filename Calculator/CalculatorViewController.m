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
    self.outputLabel.text = @"0";
}

- (IBAction)zeroButton:(id)sender {
    [self press:sender];
}

- (void)press:(UIButton*)sender {
    if ([self.outputLabel.text  isEqual: @"0"]) {
        self.outputLabel.text = sender.titleLabel.text;
    } else {
        self.outputLabel.text = [self.outputLabel.text stringByAppendingString:sender.titleLabel.text];
    }
}

- (IBAction)oneButton:(id)sender {
    [self press:sender];
}
- (IBAction)twoButton:(id)sender {
    [self press:sender];
}
- (IBAction)threeButton:(id)sender {
    [self press:sender];
}
- (IBAction)fourButton:(id)sender {
    [self press:sender];
}
- (IBAction)fiveButton:(id)sender {
    [self press:sender];
}
- (IBAction)sixButton:(id)sender {
    [self press:sender];
}
- (IBAction)sevenButton:(id)sender {
    [self press:sender];
}
- (IBAction)eightButton:(id)sender {
    [self press:sender];
}
- (IBAction)nineButton:(id)sender {
    [self press:sender];
}



@end
