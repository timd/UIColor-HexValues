//
//  ColorTests.m
//  KiwiHarnessTests
//
//  Created by Tim on 07/09/2012.
//  Copyright (c) 2012 Charismatic Megafauna Ltd. All rights reserved.
//

#import "Kiwi.h"
#import "UIColor+HexColors.h"

SPEC_BEGIN(ColorTests)

describe(@"The UIColor class", ^{
    
    context(@"with a HexColor category",   ^{
        
        __block float rComponent = 0.0f;
        __block float gComponent = 0.0f;
        __block float bComponent = 0.0f;
        __block float aComponent = 0.0f;

        it(@"should should respond to the colorWithHexString: method", ^{
            [[UIColor should] respondToSelector:@selector(colorWithHexString:)];
        });
        
        it(@"should return nil when given a nil parameter", ^{
            NSString *parameter = nil;
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            [testColor shouldBeNil];
        });
        
        it(@"should return nil if given too few parameters", ^{
            NSString *parameter = @"abcd";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            [testColor shouldBeNil];
        });
        
        it(@"should return nil if given too many parameters", ^{
            NSString *parameter = @"abcdefgh";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            [testColor shouldBeNil];
        });
        
        it(@"should return nil if given non-hex numeric characters", ^{
            NSString *parameter = @"abcpqr";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            [testColor shouldBeNil];
        });
        
        it(@"should return black when given the hex string for black (#000000)", ^{
            
            NSString *parameter = @"000000";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            
            [testColor shouldNotBeNil];

            [testColor getRed:&rComponent green:&gComponent blue:&bComponent alpha:&aComponent];
            
            [[theValue(rComponent) should] equal:theValue(0.0f)];
            [[theValue(gComponent) should] equal:theValue(0.0f)];
            [[theValue(bComponent) should] equal:theValue(0.0f)];
            [[theValue(aComponent) should] equal:theValue(1.0f)];
            
        });
        
        it(@"should return white when given the hex string for white (#ffffff)", ^{

            NSString *parameter = @"ffffff";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            
            [testColor shouldNotBeNil];
            
            [testColor getRed:&rComponent green:&gComponent blue:&bComponent alpha:&aComponent];
            
            [[theValue(rComponent) should] equal:theValue(1.0f)];
            [[theValue(gComponent) should] equal:theValue(1.0f)];
            [[theValue(bComponent) should] equal:theValue(1.0f)];
            [[theValue(aComponent) should] equal:theValue(1.0f)];
            
        });

        it(@"should return white when given an uppercase hex string for white (#FFffFf)", ^{
            
            NSString *parameter = @"FFffFf";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            
            [testColor shouldNotBeNil];
            
            [testColor getRed:&rComponent green:&gComponent blue:&bComponent alpha:&aComponent];
            
            [[theValue(rComponent) should] equal:theValue(1.0f)];
            [[theValue(gComponent) should] equal:theValue(1.0f)];
            [[theValue(bComponent) should] equal:theValue(1.0f)];
            [[theValue(aComponent) should] equal:theValue(1.0f)];
            
        });

        it(@"should return red when given the hex string for red (#ff0000)", ^{

            NSString *parameter = @"ff0000";
            UIColor *testColor = [UIColor colorWithHexString:parameter];

            [testColor shouldNotBeNil];

            [testColor getRed:&rComponent green:&gComponent blue:&bComponent alpha:&aComponent];
            
            [[theValue(rComponent) should] equal:theValue(1.0f)];
            [[theValue(gComponent) should] equal:theValue(0.0f)];
            [[theValue(bComponent) should] equal:theValue(0.0f)];
            [[theValue(aComponent) should] equal:theValue(1.0f)];
            
        });

        it(@"should return green when given the hex string for red (#007f00)", ^{
            
            NSString *parameter = @"007f00";
            UIColor *testColor = [UIColor colorWithHexString:parameter];
            
            [testColor shouldNotBeNil];
            
            [testColor getRed:&rComponent green:&gComponent blue:&bComponent alpha:&aComponent];
            
            [[theValue(rComponent) should] equal:theValue(0.0f)];
            [[theValue(gComponent) should] equal:theValue(0.5f)];
            [[theValue(bComponent) should] equal:theValue(0.0f)];
            [[theValue(aComponent) should] equal:theValue(1.0f)];
            
        });

    });
    
});

SPEC_END

