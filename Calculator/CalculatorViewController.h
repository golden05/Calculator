//
//  CalculatorViewController.h
//  Calculator
//
//  Created by golden05 on 13-11-22.
//  Copyright (c) 2013年 golden05. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *outputLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonCollection;

- (IBAction)acButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;



@end
