//
//  ZLBlock_Para_ViewController.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLBlock_Para_ViewController.h"
#import "ZLBlock_Para_Model.h"
@interface ZLBlock_Para_ViewController ()

@end

@implementation ZLBlock_Para_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Para-View";
    
    [ZLBlock_Para_Model paraBlockFunction:@"" completion:^(id respObject) {
        NSLog(@"%@", respObject);
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

@end
