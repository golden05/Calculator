//
//  CalculatorViewControllerSpec.m
//  Calculator
//
//  Created by golden05 on 13-11-22.
//  Copyright 2013年 golden05. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "CalculatorViewController.h"


SPEC_BEGIN(CalculatorViewControllerSpec)

__block CalculatorViewController *sut;
beforeEach(^{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    sut = [storyboard instantiateViewControllerWithIdentifier:@"CalculatorUserInterface"];
    [sut view];
    [sut viewDidAppear:NO];
});

afterEach(^{
    [sut viewDidDisappear:NO];
    sut = nil;
});

describe(@"CalculatorViewController", ^{
    
    it(@"should exist", ^{
        [sut shouldNotBeNil];
    });
    
    it(@"should have Output outlet to represent the operator ", ^{
        [sut.outputLabel shouldNotBeNil];
    });
    
    it(@"should have Output outlet to output 0", ^{
        NSLog(@"%@",sut.outputLabel.text);
        [[theValue(sut.outputLabel.text.intValue) should] beZero];
    });


    it(@"should have zeroButton to represent the operator ", ^{
        [sut.zeroButton shouldNotBeNil];
    });
    
    it(@"should have oneButton to represent the operator ", ^{
        [sut.oneButton shouldNotBeNil];
    });

    context(@"outputLabel is zero", ^{
		it(@"should be zero when press zeroButton", ^{
            //given
            sut.outputLabel.text = @"0";
            //when
            [[sut zeroButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] beZero];
		});
        it(@"should be one when press oneButton", ^{
            //given
            sut.outputLabel.text = @"0";
            //when
            [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(1)];
		});
	});
    context(@"outputLabel is one", ^{
		it(@"should be ten when press zeroButton", ^{
            //given
            sut.outputLabel.text = @"1";
            //when
            [[sut zeroButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(10)];
		});
        it(@"should be eleven when press oneButton", ^{
            //given
            sut.outputLabel.text = @"1";
            //when
            [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(11)];
		});
	});
    
});

SPEC_END

