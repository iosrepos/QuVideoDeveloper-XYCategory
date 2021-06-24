//
//  NSString+XYEmptyTests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/4/12.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+XYEmpty.h"

@interface NSString_XYEmpty_Tests : XCTestCase

@end

@implementation NSString_XYEmpty_Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSString * s1 = @"";
    NSString * s2 = @"hhhh";
    NSString * s3 = nil;
    
    XCTAssertTrue([NSString xy_isEmpty:s1]);
    XCTAssertFalse([NSString xy_isEmpty:s2]);
    XCTAssertTrue([NSString xy_isEmpty:s3]);
    
    XCTAssertFalse(s1.xy_isNotEmpty);
    XCTAssertTrue(s2.xy_isNotEmpty);
    XCTAssertFalse(s3.xy_isNotEmpty);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
