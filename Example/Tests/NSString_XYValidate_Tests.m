//
//  NSString_XYValidate_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSString_XYValidate_Tests : XCTestCase

@end

@implementation NSString_XYValidate_Tests

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

- (void)testValidate {
    XCTAssertTrue([@"123@abc.com" xy_isEmailFormat]);
    XCTAssertTrue([@"123456" xy_isQQFormat]);
    XCTAssertTrue([@"17612341234" xy_isMobileFormat]);
    
    XCTAssertFalse([@"123@abc" xy_isEmailFormat]);
    XCTAssertFalse([@"123456a" xy_isQQFormat]);
    XCTAssertFalse([@"1761234123433333" xy_isMobileFormat]);
}

@end
