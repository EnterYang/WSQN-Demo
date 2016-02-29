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
#import <CoreLocation/CoreLocation.h>

@interface PartyParam : YQX_BaseParam

@property (nonatomic, assign) NSInteger city_id;
@property (nonatomic, assign) CLLocationDegrees *lat;
@property (nonatomic, assign) CLLocationDegrees *lng;
@property (nonatomic, assign) NSInteger page;
@property (nonatomic, strong) NSString *regionname;
@property (nonatomic, assign) NSInteger user_id;

@end
