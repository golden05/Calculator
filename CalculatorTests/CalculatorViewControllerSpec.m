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
        [[theValue(sut.outputLabel.text.intValue) should] beZero];
    });


    it(@"should have zeroButton to represent the operator ", ^{
        [sut.zeroButton shouldNotBeNil];
    });
    
    it(@"should have oneButton to represent the operator ", ^{
        [sut.oneButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.twoButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.threeButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.fourButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.fiveButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.sixButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.sevenButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.eightButton shouldNotBeNil];
    });
    
    it(@"should have twoButton to represent the operator ", ^{
        [sut.nineButton shouldNotBeNil];
    });
    
    it(@"should have acButton to represent the operator ", ^{
        [sut.acButton shouldNotBeNil];
    });
    
    it(@"should have plusButton to represent the operator ", ^{
        [sut.plusButton shouldNotBeNil];
    });
    
    it(@"should have subtractionButton to represent the operator ", ^{
        [sut.subtractionButton shouldNotBeNil];
    });
    
    it(@"should have equalButton to represent the operator ", ^{
        [sut.equalButton shouldNotBeNil];
    });

    context(@"outputLabel is zero", ^{
        beforeEach(^{
            //given
            sut.outputLabel.text = @"0";
        });
        it(@"should be zero when press acButton", ^{
            //given
            //when
            [[sut acButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(0)];
		});        
		it(@"should be zero when press zeroButton", ^{
            //given
            //when
            [[sut zeroButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] beZero];
		});
        it(@"should be one when press oneButton", ^{
            //given
            //when
            [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(1)];
		});
        it(@"should be two when press twoButton", ^{
            //given
            //when
            [[sut twoButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(2)];
		});
        it(@"should be three when press threeButton", ^{
            //given
            //when
            [[sut threeButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(3)];
		});
        it(@"should be four when press fourButton", ^{
            //given
            //when
            [[sut fourButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(4)];
		});
        it(@"should be five when press fiveButton", ^{
            //given
            //when
            [[sut fiveButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(5)];
		});
        it(@"should be six when press sixButton", ^{
            //given
            //when
            [[sut sixButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(6)];
		});
        it(@"should be seven when press sevenButton", ^{
            //given
            //when
            [[sut sevenButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(7)];
		});
        it(@"should be eight when press eightButton", ^{
            //given
            //when
            [[sut eightButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(8)];
		});
        it(@"should be nine when press nineButton", ^{
            //given
            //when
            [[sut nineButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(9)];
		});
        


	});
    
    context(@"outputLabel is one", ^{
        beforeEach(^{
            //given
            sut.outputLabel.text = @"1";
        });
        it(@"should be zero when press acButton", ^{
            //given
            //when
            [[sut acButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(0)];
		});
		it(@"should be ten when press zeroButton", ^{
            //given
            //when
            [[sut zeroButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(10)];
		});
        it(@"should be eleven when press oneButton", ^{
            //given
            //when
            [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(11)];
		});
        it(@"should be twelve when press twoButton", ^{
            //given
            //when
            [[sut twoButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(12)];
		});
        it(@"should be thirteen  when press threeButton", ^{
            //given
            //when
            [[sut threeButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(13)];
		});
        it(@"should be fourteen when press fourButton", ^{
            //given
            //when
            [[sut fourButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(14)];
		});
        it(@"should be fifteen when press fiveButton", ^{
            //given
            //when
            [[sut fiveButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(15)];
		});
        it(@"should be sixteen  when press sixButton", ^{
            //given
            //when
            [[sut sixButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(16)];
		});
        it(@"should be seventeen when press sevenButton", ^{
            //given
            //when
            [[sut sevenButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(17)];
		});
        it(@"should be eighteen  when press eightButton", ^{
            //given
            //when
            [[sut eightButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(18)];
		});
        it(@"should be ninteen  when press nineButton", ^{
            //given
            //when
            [[sut nineButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
            //then
            [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(19)];
		});

	});
    
    it(@"should be two when one plus one ", ^{
        //given
        sut.outputLabel.text = @"0";
        //when
        [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut plusButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut equalButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        //then
        [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(2)];
    });
    
    it(@"should be zero when one subtraction one ", ^{
        //given
        sut.outputLabel.text = @"0";
        //when
        [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut subtractionButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut oneButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        [[sut equalButton] sendActionsForControlEvents:UIControlEventTouchUpInside];
        //then
        [[theValue(sut.outputLabel.text.intValue) should] equal:theValue(0)];
    });
    
});

SPEC_END

