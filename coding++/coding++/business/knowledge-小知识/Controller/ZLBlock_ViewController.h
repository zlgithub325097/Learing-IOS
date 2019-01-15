//
//  ZLBlock_ViewController.h
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,status) {
    statusOne,
    statusTwo
};

typedef enum:NSInteger {
    typeOne,
    typeTwo
}type;


@interface ZLBlock_ViewController : UIViewController
-(void)loadData:(status)type;
-(void)load:(type)type;
@end
