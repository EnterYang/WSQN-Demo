//
//  YQX_GetDataTool.h
//  WSQN
//
//  Created by yangqingxu on 16/1/24.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PartyParam.h"
#import "PartyResult.h"
#import "YQX_NetworkTool.h"

@interface YQX_GetDataTool : NSObject

+ (void)homeStatusesWithParam:(PartyParam *)param success:(void (^)(PartyResult *result))success failure:(FailureBlock)failure;

@end
