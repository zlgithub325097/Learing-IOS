//
//  ZLBlock_ViewController.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLBlock_ViewController.h"

@interface ZLBlock_ViewController ()
typedef NSString *(^ZLBlock)(NSString *parm);
@property (nonatomic,copy) ZLBlock block;
@end

@implementation ZLBlock_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    __block int  a = 5;
    a++;
    self.block = ^NSString *(NSString *parm) {
        //        a+=20; a是一个值，不能自加运算。
        a+=20;
        NSLog(@"-----%d",a);
        return parm;
    };
    NSLog(@"---%@",self.block(@"This is self.block function"));
    NSLog(@"+++++%d",a);
    NSLog(@"---%@",self.block(@"This is self.block function"));
    
    
    UIView *view = [[UIView alloc] init];
    __weak typeof(view) _view = view;
    void (^block)(void) = ^{
        _view.frame =CGRectMake(0, 0, 0, 0);
    };
    block();
}


-(void)load:(type)type {
    switch (type) {
        case typeOne:
            printf("typeOne\n");
            break;
        case typeTwo:
            printf("typeTwo\n");
            break;
        default:
            break;
    }
}

-(void)loadData:(status)type
{
    switch (type) {
        case statusOne:
            printf("statusOne\n");
            break;
        case statusTwo:
            printf("statusTwo");
            break;
        default:
            break;
    }
}



@end
