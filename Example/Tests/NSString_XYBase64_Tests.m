//
//  NSString_XYBase64_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSString_XYBase64_Tests : XCTestCase

@end

@implementation NSString_XYBase64_Tests

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

- (void)testBase64 {
    NSString * urlStr = @"https://tool.chinaz.com/tools/md5.aspx";
    NSString * base64String = [urlStr xy_base64EncodedString];
    NSString * realBase64String = @"aHR0cHM6Ly90b29sLmNoaW5hei5jb20vdG9vbHMvbWQ1LmFzcHg=";
    XCTAssertEqualObjects(realBase64String, base64String);
    
    NSString * s = [NSString stringWithBase64EncodedString:realBase64String];
    XCTAssertEqualObjects(s, urlStr);
}

@end
