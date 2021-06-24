//
//  NSString_XYUUID_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSString_XYUUID_Tests : XCTestCase

@end

@implementation NSString_XYUUID_Tests

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

- (void)testUUID {
    NSString * uuid1 = [NSString xy_UUIDString];
    NSString * uuid2 = [NSString xy_UUIDString];
    XCTAssertNotNil(uuid1);
    XCTAssertNotNil(uuid2);
    XCTAssertNotEqual(uuid1, uuid2);
}

@end
