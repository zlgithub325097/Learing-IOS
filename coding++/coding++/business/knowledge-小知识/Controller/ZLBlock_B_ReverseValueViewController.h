//
//  ZLBlock_B_ReverseValueViewController.h
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import <UIKit/UIKit.h>
// block 声明
typedef void (^zlBlock)(NSString * str);
@interface ZLBlock_B_ReverseValueViewController : UIViewController
@property(nonatomic,copy) zlBlock block;
@end
