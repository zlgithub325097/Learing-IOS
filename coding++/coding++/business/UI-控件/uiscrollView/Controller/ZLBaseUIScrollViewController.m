//
//  ZLBaseUIScrollViewController.m
//  coding++
//
//  Created by L_R on 2018/12/29.
//  Copyright © 2018年 L_R. All rights reserved.
//

#import "ZLBaseUIScrollViewController.h"

@interface ZLBaseUIScrollViewController ()
@property (nonatomic,strong) UIScrollView *scrollView;
@end

@implementation ZLBaseUIScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Base-ScrollView";
    self.view.backgroundColor = [UIColor whiteColor];
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,64,self.view.frame.size.width,self.view.frame.size.height)];
    _scrollView.backgroundColor = [UIColor orangeColor];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 267)];
    view1.backgroundColor = [UIColor redColor];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(view1.frame), self.view.frame.size.width, 400)];
    view2.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:_scrollView];
    [_scrollView addSubview:view1];
    [_scrollView addSubview:view2];
    
    
    
    // 设置
//    _scrollView.clipsToBounds = NO;
    _scrollView.scrollEnabled = YES;
    _scrollView.bounces = YES;
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width,CGRectGetMaxY(view2.frame));
    
}
@end
