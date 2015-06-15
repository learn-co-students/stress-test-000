//
//  FISGenericTestSpecSpec.m
//  StressTest
//
//  Created by Chris Gonzales on 6/4/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISGenericTestSpec)

describe(@"FISGenericTestSpec", ^{
    
    describe(@"Let's write our generic tests based on the descriptions and 'it' statements below; let's make them pass!", ^{
        
        describe(@"let's work with the beKindOf matcher!", ^{
            it(@"create an NSString and test that it is kind of class NSString",^{
                NSString *string = [NSString new];
                expect(string).to.beKindOf([NSString class]);
            });
            
            it(@"create an NSArray and test that it is kind of class NSArray",^{
                NSArray *array = [NSArray new];
                expect(array).to.beKindOf([NSArray class]);
            });
        });
        
        describe(@"let's work with the equal matcher!", ^{
            it(@"test that 4+4 is equal to 8",^{
                expect([@4 integerValue] + [@4 integerValue]).to.equal([@8 integerValue]);
            });
            
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is equal to 'Chris'",^{
                NSString *name = @"Chris";
                expect(name).to.equal(@"Chris");
            });
            
            it(@"create an NSArray variable named 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is equal to ['poptarts', 'hot pockets']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.equal(@[@"poptarts", @"hot pockets"]);
            });
        });
        
        describe(@"let's work with the notEqual matcher!", ^{
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is not equal to the NSString 'Joe'",^{
                NSString *name = @"Chris";
                expect(name).toNot.equal(@"Joe");
            });
            
            it(@"test that 4+4 is not equal to 18",^{
                expect([@4 integerValue] + [@4 integerValue]).toNot.equal([@18 integerValue]);
            });
            
            it(@"create an NSArray variable called 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is not equal to ['celery', 'spinach']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).toNot.equal(@[@"celery", @"spinach"]);
            });
            
            it(@"create an NSArray variable called 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is not equal to ['hot pockets', 'poptarts']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).toNot.equal(@[@"hot pockets", @"poptarts"]);
            });
        });
        
        describe(@"let's work with the beTruthy matcher! make tests below using beTruthy instead of the equal matcher.", ^{
            it(@"test that 4+4 is equal to 8",^{
                expect([@4 integerValue] + [@4 integerValue] == [@8 integerValue]).to.beTruthy();
            });
            
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is equal to 'Chris'",^{
                NSString *name = @"Chris";
                NSString *secondName = @"Chris";
                expect(name == secondName).to.beTruthy();
            });
            
        });
        
        describe(@"let's work with the beFalsy matcher! make tests below using beFalsy instead of the notEqual matcher", ^{
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is not equal to the NSString 'Joe'",^{
                NSString *name = @"Chris";
                NSString *secondName = @"Joe";
                expect(name == secondName).to.beFalsy();
            });
            
            it(@"test that 4+4 is not equal to 18",^{
                expect([@4 integerValue] + [@4 integerValue] == [@18 integerValue]).to.beFalsy();
            });
            
        });
        
        describe(@"let's finish with some collection-specific matchers, beginsWith and endsWith", ^{
            it(@"re-create your 'healthFood' array from earlier in the exercise. test that 'healthFood' begins with 'poptarts'",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.beginWith(@[@"poptarts"]);
            });
            
            it(@"re-create your 'healthFood' array from earlier in the exercise. test that 'healthFood' ends with with 'hot pockets'",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.endWith(@[@"hot pockets"]);
            });
            
        });
        
    });
});

SpecEnd
