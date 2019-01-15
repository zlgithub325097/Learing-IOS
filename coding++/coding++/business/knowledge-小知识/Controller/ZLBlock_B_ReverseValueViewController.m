//
//  ZLBlock_B_ReverseValueViewController.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLBlock_B_ReverseValueViewController.h"

@interface ZLBlock_B_ReverseValueViewController ()

@end

@implementation ZLBlock_B_ReverseValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // block 调用
    self.block(@"red");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
