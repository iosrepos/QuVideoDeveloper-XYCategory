//
//  XYFileTests.m
//  XYCategory_Tests
//
//  Created by robbin on 2019/4/11.
//  Copyright © 2019 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSFileManager+XYOperate.h"
#import "NSBundle+XYInit.h"
#import "NSFileManager+XYProperty.h"

@interface NSFileManager_XYOperate_Tests : XCTestCase

@property (nonatomic, copy) NSString * filePath;
@property (nonatomic, copy) NSString * destFolder;
@property (nonatomic, copy) NSString * destPath;

@end

@implementation NSFileManager_XYOperate_Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSBundle * bundle = [NSBundle xy_bundleWithBundleName:@"TEST"];
    self.filePath = [bundle pathForResource:@"IMG_8107" ofType:@"JPG"];
    NSLog(@"%@", self.filePath);
    
    self.destFolder = [NSTemporaryDirectory() stringByAppendingPathComponent:@"FOLDER"];
    self.destPath = [[NSTemporaryDirectory() stringByAppendingPathComponent:@"FOLDER"] stringByAppendingPathComponent:@"dest.jpg"];
}

- (void)testOperate {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *homePath = [paths objectAtIndex:0];
    NSString * filePath = [homePath stringByAppendingPathComponent:@"IMG_8107.JPG"];
    
    // 拷贝到documents目录
    [NSFileManager xy_deleteFileWithPath:filePath];
    XCTAssertFalse([NSFileManager xy_fileExist:filePath]);
    
    [NSFileManager xy_copyFromFile:self.filePath toFile:filePath];
    XCTAssertTrue([NSFileManager xy_fileExist:filePath]);
    
    
    // 准备移动环境
    XCTAssertEqual([NSFileManager xy_createFolderWithPath:self.destFolder], YES);
    [NSFileManager xy_deleteFileWithPath:self.destPath];
    XCTAssertFalse([NSFileManager xy_fileExist:self.destPath]);
    
    // 移动文件
    XCTAssertEqual([NSFileManager xy_moveFromFile:filePath toFile:self.destPath], YES);
    XCTAssertTrue([NSFileManager xy_fileExist:self.destPath]);
}

@end
