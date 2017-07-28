//
//  ViewController.m
//  CCInterfaceAdaptation
//
//  Created by admin on 2017/7/27.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

#import "ViewController.h"
#import "ScrollviewViewController.h"
#import "NOScrollviewViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btnSelectOne=[[UIButton alloc]init];
    [btnSelectOne setTitle:@"滑动适配页面效果" forState:UIControlStateNormal];
    [btnSelectOne setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    btnSelectOne.titleLabel.font=[UIFont systemFontOfSize:15];
    [btnSelectOne addTarget:self action:@selector(btnSelectOne_Click) forControlEvents:UIControlEventTouchUpInside];
    [btnSelectOne setBackgroundColor:[UIColor whiteColor]];
    btnSelectOne.layer.cornerRadius=5;
    btnSelectOne.layer.masksToBounds=YES;
    btnSelectOne.layer.borderColor=[UIColor darkGrayColor].CGColor;
    btnSelectOne.layer.borderWidth=1;
    [self.view addSubview:btnSelectOne];
    [btnSelectOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.equalTo(self.view).offset(40);
        make.top.equalTo(self.view).offset(150);
        make.height.mas_equalTo(40);
    }];
    
    UIButton *btnSelectTwo=[[UIButton alloc]init];
    [btnSelectTwo setTitle:@"非滑动适配页面效果" forState:UIControlStateNormal];
    [btnSelectTwo setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    btnSelectTwo.titleLabel.font=[UIFont systemFontOfSize:15];
    [btnSelectTwo setBackgroundColor:[UIColor whiteColor]];
    btnSelectTwo.layer.cornerRadius=5;
    btnSelectTwo.layer.masksToBounds=YES;
    btnSelectTwo.layer.borderColor=[UIColor darkGrayColor].CGColor;
    btnSelectTwo.layer.borderWidth=1;
    [btnSelectTwo addTarget:self action:@selector(btnSelectTwo_Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnSelectTwo];
    [btnSelectTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.equalTo(self.view).offset(40);
        make.top.equalTo(btnSelectOne.mas_bottom).offset(50);
        make.height.mas_equalTo(40);
    }];
}

-(void)btnSelectOne_Click{
    ScrollviewViewController *scroll=[[ScrollviewViewController alloc]init];
    UINavigationController* nav = [[UINavigationController alloc] initWithNavigationBarClass:[UINavigationBar class] toolbarClass:nil];
    [nav setViewControllers:@[ scroll ]];
    [self presentViewController:nav animated:YES completion:nil];
}

-(void)btnSelectTwo_Click{
    NOScrollviewViewController *scroll=[[NOScrollviewViewController alloc]init];
    UINavigationController* nav = [[UINavigationController alloc] initWithNavigationBarClass:[UINavigationBar class] toolbarClass:nil];
    [nav setViewControllers:@[ scroll ]];
    [self presentViewController:nav animated:YES completion:nil];
  
}

@end
