//
//  CViewController.m
//  CCInterfaceAdaptation
//
//  Created by admin on 2017/7/27.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

#import "CViewController.h"
#import "Masonry.h"

@interface CViewController ()

@end

@implementation CViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    //定义scrollview，添加到self.view上面，大小定义为与self.view的大小一样
    self.scrollView=[[UIScrollView alloc] init];
    [self.view addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.and.right.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
    self.scrollView.alwaysBounceVertical=YES;
    self.scrollView.scrollEnabled=YES;
    self.scrollView.showsVerticalScrollIndicator=NO;
    
    //定义viewContent添加至scrollView上面，并且viewContent与scrollView大小一样
    self.viewContent=[[UIView alloc] init];
    [self.scrollView addSubview:self.viewContent];
    [self.viewContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView);
        
    }];
    
    //自定义的控价添加到viewContent上面
    [self createView:self.viewContent];
    //当viewContent有控件添加时，控制最下方的控件与最后一个控件约束10个像素
    if (self.viewContent.subviews.count>0){
        [self.viewContent mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.viewContent.subviews.lastObject).offset(10);
        }];
    }
}

/*
 提取方法为公有方法，当子类继承CViewController的时候，子类有生成createView方法，则调用子类的方法，不在调用父类的方法
*/
 - (void) createView:(UIView*)contentView
{
    
}


@end
