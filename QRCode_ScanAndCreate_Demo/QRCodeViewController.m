//
//  QRCodeViewController.m
//  QRCode_ScanAndCreate_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "QRCodeViewController.h"
#import "UIImage+QRCode.h"


@interface QRCodeViewController ()

@end

@implementation QRCodeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"二维码";
    
    //    UIImage *image = [UIImage qrImageByContent:@"http://www.baidu.com"];
    CGFloat width = 200;
    
    //    UIImage *image = [UIImage qrImageWithContent:@"http://www.baidu.com" size:width red:20 green:100 blue:100];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectZero];
    imgView.frame = CGRectMake(20, 70, width, width);
    imgView.center = self.view.center;
    imgView.layer.shadowColor = [UIColor blackColor].CGColor;
    imgView.layer.shadowOffset = CGSizeMake(1, 2);
    imgView.layer.shadowRadius = 1;
    imgView.layer.shadowOpacity = 0.5;
    [self.view addSubview:imgView];
    
    if (!_content) {
        _content = @"http://www.baidu.com";
    }
    
    imgView.image = [UIImage qrImageWithContent:_content logo:[UIImage imageNamed:@"零距离仰望星空"] size:width red:20 green:100 blue:100];
}


@end
