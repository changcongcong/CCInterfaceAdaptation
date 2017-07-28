//
//  NOScrollviewViewController.m
//  CCInterfaceAdaptation
//
//  Created by admin on 2017/7/27.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

#import "NOScrollviewViewController.h"
#import "Masonry.h"

@interface NOScrollviewViewController (){
    UILabel *lblShow;
}


@end

@implementation NOScrollviewViewController

//所有的控件添加到contentView上面
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"滑动页面";
    self.view.backgroundColor=[UIColor whiteColor];
    
    //控件需要加到contentView上面
    //添加显示的label
    lblShow=[[UILabel alloc]init];
    lblShow.textColor=[UIColor darkTextColor];
    lblShow.font=[UIFont systemFontOfSize:15];
    lblShow.text=@"改变lbl内容,随着label的增长，观察页面适配变化";
    lblShow.textAlignment=NSTextAlignmentCenter;
    lblShow.numberOfLines=0;
    [self.view addSubview:lblShow];
    [lblShow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view).offset(150);
    }];
    
    //添加增加label显示的按钮，观察适配效果
    UIButton *btnAdd=[[UIButton alloc]init];
    [btnAdd setTitle:@"增加label长度" forState:UIControlStateNormal];
    [btnAdd setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [btnAdd addTarget:self action:@selector(btnAdd_Click) forControlEvents:UIControlEventTouchUpInside];
    btnAdd.titleLabel.font=[UIFont systemFontOfSize:15];
    [btnAdd setBackgroundColor:[UIColor whiteColor]];
    btnAdd.layer.cornerRadius=5;
    btnAdd.layer.masksToBounds=YES;
    btnAdd.layer.borderColor=[UIColor darkGrayColor].CGColor;
    btnAdd.layer.borderWidth=1;
    [self.view addSubview:btnAdd];
    [btnAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.equalTo(self.view).offset(40);
        make.top.equalTo(lblShow.mas_bottom).offset(30);
        make.height.mas_equalTo(40);
    }];
    
    UIBarButtonItem *leftBar=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(btnLeft_Click)];
    self.navigationItem.leftBarButtonItem=leftBar;
}

-(void)btnAdd_Click{
    //改变lbl内容,随着label的增长，观察页面适配变化,更换各种iphone和ipad，以及横屏竖屏切换，发现页面都是适配的，利用这个方法可实现所有的苹果手持设备的页面适配
    lblShow.text=[lblShow.text stringByAppendingString:lblShow.text];
}

-(void)btnLeft_Click{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
