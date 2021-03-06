//
//  NSArray+HLSExtensionsTestCase.m
//  CoconutKit-demo
//
//  Created by Samuel Défago on 23.08.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "NSArray+HLSExtensionsTestCase.h"

@implementation NSArray_HLSExtensionsTestCase

#pragma mark Tests

- (void)testRotation
{
    NSArray *array = @[@"1", @"2", @"3"];
    
    NSArray *leftArray = [array arrayByLeftRotatingNumberOfObjects:2];
    NSArray *expectedLeftArray = @[@"3", @"1", @"2"];
    XCTAssertTrue([leftArray isEqualToArray:expectedLeftArray]);
    
    NSArray *rightArray = [array arrayByRightRotatingNumberOfObjects:2];
    NSArray *expectedRightArray = @[@"2", @"3", @"1"];
    XCTAssertTrue([rightArray isEqualToArray:expectedRightArray]);
}

- (void)testSafeInsert
{
    NSMutableArray *array = [NSMutableArray array];
    [array safelyAddObject:nil];
    XCTAssertEqual([array count], (NSUInteger)0);
}

@end
