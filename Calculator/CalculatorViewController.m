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
@property BOOL secondFlag ;
@property int firstElement;
@property int secondElement;
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
    self.firstElement = 0;
    self.secondElement = 0;
    self.secondFlag = NO;
    self.operation = Nil;
}

- (IBAction)zeroButton:(id)sender {
    [self press:sender];
}

- (void)press:(UIButton*)sender {
    
    if ((self.computeFlag) || ([self.outputLabel.text  isEqual: @"0"])){
        self.computeFlag = NO;
        self.outputLabel.text = sender.titleLabel.text;
    } else {
        self.outputLabel.text = [self.outputLabel.text stringByAppendingString:sender.titleLabel.text];
    }
    if (self.secondFlag == YES) {
        self.secondElement = self.outputLabel.text.intValue;
    }else {
        self.firstElement = self.outputLabel.text.intValue;
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
    self.secondFlag = YES;
    self.operation = @"+";
    self.firstElement = self.firstElement + self.secondElement;
    self.outputLabel.text = [NSString stringWithFormat:@"%d",self.firstElement];
    self.secondElement = 0;
    self.computeFlag = YES;
}
- (IBAction)subtractionButton:(id)sender {
    self.secondFlag = YES;
    self.operation = @"-";
    self.computeFlag = YES;
    self.firstElement = self.firstElement - self.secondElement;
    self.outputLabel.text = [NSString stringWithFormat:@"%d",self.firstElement];
    self.secondElement = 0;
    self.computeFlag = YES;
    
//    self.outputLabel.text = [NSString stringWithFormat:@"%d",(self.compute - firstElement)];
//    self.compute = self.outputLabel.text.intValue;
}

- (IBAction)equalButton:(id)sender {
    self.secondFlag = YES;
    if (self.computeFlag == YES) {
    } else {
        if ([self.operation  isEqual: @"+"]) {
            self.firstElement = self.firstElement + self.secondElement;
            self.outputLabel.text = [NSString stringWithFormat:@"%d",self.firstElement];
            self.secondElement = 0;
        }
        else if ([self.operation  isEqual: @"-"]){
            self.firstElement = self.firstElement - self.secondElement;
            self.outputLabel.text = [NSString stringWithFormat:@"%d",self.firstElement];
            self.secondElement = 0;
        }
        self.computeFlag = YES;
    }
}



@end
