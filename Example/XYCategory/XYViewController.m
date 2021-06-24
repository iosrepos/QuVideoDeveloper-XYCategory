//
//  XYViewController.m
//  XYCategory
//
//  Created by irobbin1024 on 04/10/2019.
//  Copyright (c) 2019 irobbin1024. All rights reserved.
//

#import "XYViewController.h"
#import <XYCategory/XYCategory.h>


@interface XYViewController ()

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self testDataService];
    
//    [self testXYSize];
    
//    [self testXYAppInfo];
    
//    [self testXYState];
    
//    [self testXYColorInit];
    
//    [self testDeviceInfo];
    
//    [self testFont];
    
//    [self testBlur];
    
//    [self testImageColor];
    
//    [self testBundleImage];
    
//    [self test_resizeImageToSize];
    
//    [self test_resizeImageToSizeWithMode];
    
//    [self test_roundCornerImageByRadius];
    
//    [self test_roundCornerImageByRadiusBorder];
    
//    [self testNib];
    
//    [self testViewBlur];
    
}

- (void)testDataService {
    // 测试Keychain存储
//    NSString *uuid = [NSUUID UUID].UUIDString;
//    NSLog(@"befor keychain: %@", uuid);
//    [XYDataService setSecureData:uuid forKey:@"XYUUID"];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        id keychainData = [XYDataService secureDataForKey:@"XYUUID"];
//        NSLog(@"after keychain: %@", keychainData);
//    });
}

- (void)testViewBlur {
    UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.contentMode = UIViewContentModeCenter;
    view.frame = self.view.bounds;
    [self.view addSubview:view];
    
    UIView * blurView = [UIView xy_blurViewWithStyle:UIBlurEffectStyleExtraLight backgroundColor:[UIColor clearColor] alpha:1.0];
    blurView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:blurView];
}

- (void)testNib {
    UIView * v = [UINib xy_uniqueViewWithNibName:@"View" bundleName:nil];
    [self.view addSubview:v];
}

- (void)test_roundCornerImageByRadiusBorder {
    self.view.backgroundColor = [UIColor blackColor];
    __block UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    img = [img xy_resizeImageToSize:CGSizeMake(300, 300) contentMode:UIViewContentModeScaleAspectFill];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        img = [img xy_roundCornerImageByRadius:15 borderWidth:3 borderColor:[UIColor redColor]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImageView * view = [[UIImageView alloc] initWithImage:img];
            view.contentMode = UIViewContentModeCenter;
            view.frame = self.view.bounds;
            [self.view addSubview:view];
        });
    });
}

- (void)test_roundCornerImageByRadius {
    self.view.backgroundColor = [UIColor blackColor];
    __block UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    img = [img xy_resizeImageToSize:CGSizeMake(300, 300) contentMode:UIViewContentModeScaleAspectFill];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        img = [img xy_roundCornerImageByRadius:15];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImageView * view = [[UIImageView alloc] initWithImage:img];
            view.contentMode = UIViewContentModeCenter;
            view.frame = self.view.bounds;
            [self.view addSubview:view];
        });
    });
}

- (void)test_resizeImageToSizeWithMode {
    UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    img = [img xy_resizeImageToSize:CGSizeMake(300, 100) contentMode:UIViewContentModeScaleAspectFill];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.contentMode = UIViewContentModeCenter;
    view.frame = self.view.bounds;
    [self.view addSubview:view];
}

- (void)test_resizeImageToSize {
    UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    img = [img xy_resizeImageToSize:CGSizeMake(300, 100)];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.contentMode = UIViewContentModeCenter;
    view.frame = self.view.bounds;
    [self.view addSubview:view];
}

- (void)testBundleImage {
    UIImage * img = [UIImage xy_imageWithName:@"pic" bundleName:@"ABC"];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.contentMode = UIViewContentModeCenter;
    view.frame = self.view.bounds;
    [self.view addSubview:view];
}

- (void)testImageColor {
    UIImage * img = [UIImage xy_imageWithColor:[UIColor redColor] size:CGSizeMake(200, 200)];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.contentMode = UIViewContentModeCenter;
    view.frame = self.view.bounds;
    [self.view addSubview:view];
}

- (void)testBlur {
    UIImage * img = [UIImage imageNamed:@"IMG_6471.PNG"];
    img = [img xy_imageByBlurDark];
    UIImageView * view = [[UIImageView alloc] initWithImage:img];
    view.frame = self.view.bounds;
    [self.view addSubview:view];
}

- (void)testFont {
    NSString * path = [[NSBundle mainBundle] pathForResource:@"GOTHAMRND-BOOK" ofType:@"OTF"];
    NSString * fontName = [UIFont xy_loadFontFromPath:path];
    UIFont * font = [UIFont fontWithName:fontName size:20];
    UILabel * label = [UILabel new];
    label.font = font;
    label.text = @"ABCDEFGHIJKLMNO";
    [label sizeToFit];
    label.top = 50;
    [self.view addSubview:label];
}

- (void)testDeviceInfo {
//    NSLog(@"macAddress : %@", [UIDevice currentDevice].xy_macAddressString);
    NSLog(@"idfa : %@", [UIDevice currentDevice].xy_IDFAString);
//    NSLog(@"idfv : %@", [UIDevice currentDevice].xy_IDFVString);
//    NSLog(@"isJailbreak : %@", [UIDevice currentDevice].xy_isJailbroken ? @"YES" : @"NO");
//    NSLog(@"machineModel : %@", [UIDevice currentDevice].xy_machineModel);
//    NSLog(@"machineModel name : %@", [UIDevice currentDevice].xy_machineModelName);
//    NSLog(@"cellularProvicerName : %@", [UIDevice currentDevice].xy_cellularProvicerName);
//    NSLog(@"is 64 : %@", [UIDevice currentDevice].xy_is64Bit ? @"YES" : @"NO");
//    NSLog(@"diskSpace : %lld", [UIDevice currentDevice].xy_diskSpace);
//    NSLog(@"diskSpaceFree : %lld", [UIDevice currentDevice].xy_diskSpaceFree);
//    NSLog(@"diskSpaceUsed : %lld", [UIDevice currentDevice].xy_diskSpaceUsed);
//    NSLog(@"memoryTotal : %lld", [UIDevice currentDevice].xy_memoryTotal);
//    NSLog(@"memoryFree : %lld", [UIDevice currentDevice].xy_memoryFree);
//    NSLog(@"memoryUsed : %lld", [UIDevice currentDevice].xy_memoryUsed);
//    NSLog(@"weUseMemory : %lld", [UIDevice currentDevice].xy_weUseMemory);
}

- (void)testXYColorInit {
    UIColor * color = [UIColor xy_colorWithHEX:0x123456];
    self.view.backgroundColor = color;
}

- (void)testXYState {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"is foreground : %@", [UIApplication sharedApplication].xy_isForegroundState ? @"YES" : @"NO");
    });
}

- (void)testXYAppInfo {
    NSLog(@"AppName: %@", [UIApplication sharedApplication].xy_appName);
    NSLog(@"AppVersion: %@", [UIApplication sharedApplication].xy_appVersion);
    NSLog(@"AppBuildVersion: %@", [UIApplication sharedApplication].xy_appBuildVersion);
}

- (void)testXYSize {
    UILabel * label = [UILabel new];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:16];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    NSString * content = @"分隔Url的协议、主机、路径等组件。比如：冒号:保留为方案、用户/口令，以及主机/端口组件的定界符使用；/保留为路径组件中分隔路径段的定界符；? 保留作为查询字符串定界符使用；#保留为分段定界符使用";
    CGSize size = [content xy_sizeWithFont:label.font size:CGSizeMake(200, CGFLOAT_MAX) mode:NSLineBreakByWordWrapping];
    
    label.size = size;
    label.top = 50;
    
    label.text = content;
    
}

@end
