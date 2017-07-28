//
//  CViewController.h
//  CCInterfaceAdaptation
//
//  Created by admin on 2017/7/27.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

/*
    创立滑动页面作为公共页面，需要滑动页面效果的页面可继承本类
 */

#import <UIKit/UIKit.h>

@interface CViewController : UIViewController

/*
    将方法，属性公有化，方便继承CViewController的子类根据自定义需求调整页面
 */
- (void) createView:(UIView*)contentView;
@property(nonatomic,strong) UIView *viewContent;
@property(nonatomic,strong) UIScrollView *scrollView;

@end
