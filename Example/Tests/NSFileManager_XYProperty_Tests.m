//
//  NSFileManager_XYProperty_Tests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/6/24.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XYCategory/XYCategory.h>

@interface NSFileManager_XYProperty_Tests : XCTestCase

@property (nonatomic, copy) NSString * filePath;
@property (nonatomic, copy) NSString * destFolder;
@property (nonatomic, copy) NSString * destPath;

@end

@implementation NSFileManager_XYProperty_Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    NSBundle * bundle = [NSBundle xy_bundleWithBundleName:@"TEST"];
    self.filePath = [bundle pathForResource:@"IMG_8107" ofType:@"JPG"];
    NSLog(@"%@", self.filePath);
    
    self.destFolder = [NSTemporaryDirectory() stringByAppendingPathComponent:@"FOLDER"];
    self.destPath = [[NSTemporaryDirectory() stringByAppendingPathComponent:@"FOLDER"] stringByAppendingPathComponent:@"dest.jpg"];
}

- (void)testProperty {
    NSString * fileName = [NSFileManager xy_getFileNameFromPath:self.filePath];
    XCTAssertTrue([fileName isEqualToString:@"IMG_8107.JPG"]);
    
    fileName = [NSFileManager xy_getFileNameNoExtension:self.filePath];
    XCTAssertTrue([fileName isEqualToString:@"IMG_8107"]);
    
    fileName = [NSFileManager xy_getFileExtensionWithPath:self.filePath];
    XCTAssertTrue([fileName isEqualToString:@"JPG"]);
    
    XCTAssertEqual([NSFileManager xy_getFileSizeWithPath:self.filePath], 61807);
    
    XCTAssertEqual([NSFileManager xy_fileExist:self.filePath], YES);
}

@end
