//
//  ZLBlock_Para_Model.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLBlock_Para_Model.h"

@implementation ZLBlock_Para_Model
+ (void)paraBlockFunction:(id)somePara completion:(SuccessBlockWithObject)completionBlock failure:(FailureWithObject)failure
{
//    [PPNetworkHelper POST:@"http://www.baidu.com" parameters:somePara success:^(id responseObject) {
//        completionBlock(responseObject);
//    } failure:^(NSError *error) {
//        failure(error);
//    }];
    
    [PPNetworkHelper GET:@"http://www.baidu.com" parameters:somePara success:^(id responseObject) {
        completionBlock(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}
     
@end
