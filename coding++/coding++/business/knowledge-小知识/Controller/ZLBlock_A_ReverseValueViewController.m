//
//  ZLBlock_ReverseValueViewController.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLBlock_A_ReverseValueViewController.h"
#import "ZLBlock_B_ReverseValueViewController.h"
@interface ZLBlock_A_ReverseValueViewController ()
@property (nonatomic,strong) UIButton *btn;
@end

@implementation ZLBlock_A_ReverseValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"reverse_A";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转页面-reverse_B" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    self.btn = btn;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(50);
        make.centerY.offset(0);
        make.centerX.offset(0);
    }];
}

-(void)btnClick:(UIButton *)button
{
    ZLBlock_B_ReverseValueViewController *Bvc = [[ZLBlock_B_ReverseValueViewController alloc] init];
    __weak typeof(self.btn) weakBtn = self.btn;
    // block 实现
    Bvc.block = ^(NSString *str) {
        NSLog(@"------%@",str);
        weakBtn.backgroundColor = [UIColor whiteColor];
        [weakBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [weakBtn setTitle:str forState:UIControlStateNormal];
    };
    [self.navigationController presentViewController:Bvc animated:YES completion:nil];
}

@end
