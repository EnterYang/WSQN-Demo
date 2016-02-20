//
//  Actor.h
//  WSQN
//
//  Created by yangqingxu on 16/1/21.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actor : NSObject

@property (nonatomic, assign) int user_id;
@property (nonatomic, copy) NSString *avatar;
//
//+ (instancetype)actorWithDict:(NSDictionary *)dict;
//- (instancetype)initWithDict:(NSDictionary *)dict;
@end
