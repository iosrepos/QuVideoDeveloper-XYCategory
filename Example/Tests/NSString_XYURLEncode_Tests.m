//
//  NSString_XYURLEncode_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSString_XYURLEncode_Tests : XCTestCase

@end

@implementation NSString_XYURLEncode_Tests

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

- (void)testEncode {
    NSString * str = @"https://tool.chinaz.com/tools/md5.aspx";
    NSString * encodeString = [str xy_stringByURLEncode];
    XCTAssertEqualObjects(encodeString, @"https%3A//tool.chinaz.com/tools/md5.aspx");
    
    XCTAssertEqualObjects([encodeString xy_stringByURLDecode], str);
}

- (void)testNilEncode {
    NSString * str = nil;
    NSString * encodeString = [str xy_stringByURLEncode];
    XCTAssertNil(encodeString);
}


@end
