//
//  XYDateFormatTests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/4/11.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+XYFormat.h"

@interface NSDate_XYFormat_Tests : XCTestCase

@end

@implementation NSDate_XYFormat_Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

//- (void)testProperty {
//    NSDate * date = [NSDate date];
//
//    XCTAssertEqual(date.year, 2019);
//    XCTAssertEqual(date.month, 6);
//    XCTAssertEqual(date.day, 24);
//    
//    NSString * str = [date xy_stringWithDateFormat:@"yyyy MM dd HH-mm-ss"];
//    XCTAssertTrue([str hasPrefix:@"2019 06 24"]);
//
//    NSDate * date2 = [NSDate xy_dateWithString:str format:@"yyyy MM dd HH-mm-ss"];
//    XCTAssertNotNil(date2);
//}


@end
