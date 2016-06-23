//
//  QRView.h
//  QRCode_ScanAndCreate_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QRView;
@protocol QRViewDelegate <NSObject>
/**
 *  代理回调扫描结果
 *
 *  @param view   扫一扫视图
 *  @param result 扫描结果
 */
- (void)qrView:(QRView*)view ScanResult:(NSString*)result;

@end



@interface QRView : UIView

@property(nonatomic,assign)id<QRViewDelegate> delegate;

@property(nonatomic,assign,readonly)CGRect scanViewFrame;

- (void)startScan;
- (void)stopScan;

@end
