//
//  XYNSBundleInitTests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/4/11.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSBundle+XYInit.h"

@interface NSBundle_XYInit_Tests : XCTestCase

@end

@implementation NSBundle_XYInit_Tests

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

- (void)testBundleInit {
    NSBundle * bundle = [NSBundle xy_bundleWithBundleName:@"TEST"];
    XCTAssertNotNil(bundle);
    
    UIImage * img = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"IMG_8107" ofType:@"JPG"]];
    
    XCTAssertNotNil(img);
}

@end
