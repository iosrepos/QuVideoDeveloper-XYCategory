//
//  NSData_XYBase64_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSData_XYBase64_Tests : XCTestCase

@end

@implementation NSData_XYBase64_Tests

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
    NSData * data = [urlStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString * base64String = [data xy_base64EncodedString];
    NSString * realBase64String = @"aHR0cHM6Ly90b29sLmNoaW5hei5jb20vdG9vbHMvbWQ1LmFzcHg=";
    XCTAssertEqualObjects(realBase64String, base64String);
    
    NSString * s = [[NSString alloc] initWithData:[NSData xy_dataWithBase64EncodedString:realBase64String] encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(s, urlStr);
}

@end
