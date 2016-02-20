//
//  YQX_GetDataTool.m
//  WSQN
//
//  Created by yangqingxu on 16/1/24.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "YQX_GetDataTool.h"
#import "YQX_NetworkTool.h"
#import "MJExtension.h"

@implementation YQX_GetDataTool

+ (void)homeStatusesWithParam:(PartyParam *)param success:(void (^)(PartyResult *result))success failure:(void (^)(NSError *error))failure
{
    [YQX_NetworkTool postWithURL:@"http://api.wsqnr.com/index.php?r=huodong/indexlist" params:param.mj_keyValues success:^(id json) {
        if (success) {
            PartyResult *result = [PartyResult mj_objectWithKeyValues:json];
            success(result);
        }
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
