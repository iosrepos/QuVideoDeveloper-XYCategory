//
//  NSArray_XYDataSafeTransform_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2021/6/22.
//  Copyright © 2021 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+XYDataSafeTransform.h"
#import "NSDictionary+XYDataSafeTransform.h"

@interface NSArray_XYDataSafeTransform_Tests : XCTestCase

@end

@implementation NSArray_XYDataSafeTransform_Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testArrayData {
    // 数字可以转字符串，字符串可以转数字
    NSArray * testData = @[@"字符串", @100, @{@"key1" : @"value1"}, @[@1, @2]];
    // 正常转值
    XCTAssertTrue([[testData xyStringAtIndex:0] isEqualToString:@"字符串"]);
    XCTAssertEqual([testData xyNumberAtIndex:1], @100);
    XCTAssertTrue([[testData xyDictionaryAtIndex:2] isKindOfClass:NSDictionary.class]);
    XCTAssertTrue([[testData xyArrayAtIndex:3] isKindOfClass:NSArray.class]);
    
    // 字符串转值
    XCTAssertEqual([testData xyNumberAtIndex:0], @0);
    XCTAssertNil([testData xyDictionaryAtIndex:0]);
    XCTAssertNil([testData xyArrayAtIndex:0]);
    
    // 数字转值
    XCTAssertTrue([[testData xyStringAtIndex:1] isEqualToString:@"100"]);
    XCTAssertNil([testData xyDictionaryAtIndex:1]);
    XCTAssertNil([testData xyArrayAtIndex:1]);
    
    // 字典转值
    XCTAssertNil([testData xyNumberAtIndex:2]);
    XCTAssertNil([testData xyStringAtIndex:2]);
    XCTAssertNil([testData xyArrayAtIndex:2]);
    
    // 数组转值
    XCTAssertNil([testData xyNumberAtIndex:3]);
    XCTAssertNil([testData xyStringAtIndex:3]);
    XCTAssertNil([testData xyDictionaryAtIndex:3]);
}

- (void)testDictionaryData {
    // 数字可以转字符串，字符串可以转数字
    NSDictionary * testData = @{@"key1" : @"字符串",
                                @"key2" : @100,
                                @"key3" : @{@"key1" : @"value1"},
                                @"key4" : @[@1, @2]
    };
    // 正常转值
    XCTAssertTrue([[testData xyStringForKey:@"key1"] isEqualToString:@"字符串"]);
    XCTAssertEqual([testData xyNumberForKey:@"key2"], @100);
    XCTAssertTrue([[testData xyDictionaryForKey:@"key3"] isKindOfClass:NSDictionary.class]);
    XCTAssertTrue([[testData xyArrayForKey:@"key4"] isKindOfClass:NSArray.class]);
    
    // 字符串转值
    XCTAssertEqual([testData xyNumberForKey:@"key1"], @0);
    XCTAssertNil([testData xyDictionaryForKey:@"key1"]);
    XCTAssertNil([testData xyArrayForKey:@"key1"]);
    
    // 数字转值
    XCTAssertTrue([[testData xyStringForKey:@"key2"] isEqualToString:@"100"]);
    XCTAssertNil([testData xyDictionaryForKey:@"key2"]);
    XCTAssertNil([testData xyArrayForKey:@"key2"]);
    
    // 字典转值
    XCTAssertNil([testData xyNumberForKey:@"key3"]);
    XCTAssertNil([testData xyStringForKey:@"key3"]);
    XCTAssertNil([testData xyArrayForKey:@"key3"]);
    
    // 数组转值
    XCTAssertNil([testData xyNumberForKey:@"key4"]);
    XCTAssertNil([testData xyStringForKey:@"key4"]);
    XCTAssertNil([testData xyDictionaryForKey:@"key4"]);
}

@end
