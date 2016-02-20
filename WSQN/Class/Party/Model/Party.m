//
//  party.m
//  WSQN
//
//  Created by yangqingxu on 16/1/21.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "Party.h"
#import <MJExtension/MJExtension.h>
#import "Actor.h"

@implementation Party
+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"actor" : [Actor class]};
}
@end
