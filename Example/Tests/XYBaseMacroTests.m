//
//  XYBaseMacroTests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/4/11.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XYBaseMacroTests : XCTestCase

@end

@implementation XYBaseMacroTests

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

//- (void)testFloat {
//    CGFloat a = 10.0;
//    CGFloat b = 10.000000;
//    XCTAssertTrue(XYFloatIsEqual(a, b));
//    u
//    CGFloat date = 1.0e-7;
//    b = a + date;
//
//    XCTAssertTrue(XYFloatIsEqual(a, b));
//
//    a = 10.0;
//    b = 10.001;
//    XCTAssertFalse(XYFloatIsEqual(a, b));
//
//    a = 10.0;
//    b = 10.001;
//    XCTAssertTrue(XYFloatIsEqualWithAccuracy(a, b, 0.001));
//
//    a = 10.0;
//    b = 10.002;
//    XCTAssertFalse(XYFloatIsEqualWithAccuracy(a, b, 0.001));
//}
//
//- (void)testSwap {
//    NSInteger a = 10;
//    NSInteger b = 20;
//
//    XY_SWAP(a, b);
//
//    XCTAssertEqual(a, 20);
//    XCTAssertEqual(b, 10);
//}



@end
