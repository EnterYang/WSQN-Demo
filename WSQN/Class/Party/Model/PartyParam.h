//
//  PartyParam.h
//  WSQN
//
//  Created by yangqingxu on 16/1/24.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//
/*
 NSMutableDictionary *params = [NSMutableDictionary dictionary];
 params[@"city_id"] = @52;
 params[@"lat"] = @0;
 params[@"lng"] = @0;
 params[@"page"] = @0;
 params[@"regionname"] = nil;
 params[@"user_id"] = @2159;
 */
#import <Foundation/Foundation.h>
#import "YQX_BaseParam.h"

@interface PartyParam : YQX_BaseParam

@property (nonatomic, strong) NSNumber *city_id;
@property (nonatomic, strong) NSNumber *lat;
@property (nonatomic, strong) NSNumber *lng;
@property (nonatomic, strong) NSNumber *page;
@property (nonatomic, strong) NSNumber *regionname;
@property (nonatomic, strong) NSNumber *user_id;

@end
