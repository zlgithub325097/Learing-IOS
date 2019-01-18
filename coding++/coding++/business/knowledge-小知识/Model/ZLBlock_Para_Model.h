//
//  ZLBlock_Para_Model.h
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZLBlock_Para_Model : NSObject
+ (void)paraBlockFunction:(id)somePara completion:(SuccessBlockWithObject)completionBlock failure:(FailureWithObject)failure;
@end
