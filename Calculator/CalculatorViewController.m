//
//  CalculatorViewController.m
//  Calculator
//
//  Created by golden05 on 13-11-22.
//  Copyright (c) 2013年 golden05. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
@property BOOL computeFlag ;
@property int compute;
@property NSString* operation;

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
    self.computeFlag = NO;
    self.compute = 0;
    self.operation = Nil;
}

- (IBAction)zeroButton:(id)sender {
    [self press:sender];
}

- (void)press:(UIButton*)sender {
//    self.compute = self.outputLabel.text.intValue ;
    // [self.outputLabel.text  isEqual: @"0"]
    if ((self.computeFlag) || ([self.outputLabel.text  isEqual: @"0"])){
        self.computeFlag = NO;
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
- (IBAction)plusButton:(id)sender {
    self.operation = @"+";
    if (self.computeFlag == YES) {
        self.compute = self.outputLabel.text.intValue;
    } else {
        self.computeFlag = YES;
        int dd = self.outputLabel.text.intValue;
        self.outputLabel.text = [NSString stringWithFormat:@"%d",(self.compute + dd )];
        self.compute = self.outputLabel.text.intValue;
        
    }
}
- (IBAction)equalButton:(id)sender {
    if (self.computeFlag == YES) {
        self.outputLabel.text = [NSString stringWithFormat:@"%d",(self.compute + self.outputLabel.text.intValue)];
    } else {
        int dd = self.outputLabel.text.intValue;
        if ([self.operation  isEqual: @"+"]) {
            self.outputLabel.text = [NSString stringWithFormat:@"%d",(self.compute + self.outputLabel.text.intValue)];
            self.compute = dd ;
        }
        self.computeFlag = YES;
    }
}



@end
