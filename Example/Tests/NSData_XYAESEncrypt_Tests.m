//
//  NSData_XYEncrypt_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSData_XYEncrypt_Tests : XCTestCase

@end

@implementation NSData_XYEncrypt_Tests

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

- (void)testMD5 {
    NSData * str = [@"hello, world!你好" dataUsingEncoding:NSUTF8StringEncoding];
    NSString * md5String = [str xy_MD5String];
    XCTAssertEqualObjects(@"1CABBB0D5DBA951212ABFF31CA3392FD", [md5String uppercaseString]);
}

- (void)testBase64 {
    NSData * urlStr = [@"https://tool.chinaz.com/tools/md5.aspx" dataUsingEncoding:NSUTF8StringEncoding];
    NSString * base64String = [urlStr xy_base64EncodedString];
    XCTAssertEqualObjects(@"aHR0cHM6Ly90b29sLmNoaW5hei5jb20vdG9vbHMvbWQ1LmFzcHg=", base64String);
}


@end
