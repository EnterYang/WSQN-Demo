//
//  PartyResult.m
//  WSQN
//
//  Created by yangqingxu on 16/1/24.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "PartyResult.h"
#import <MJExtension/MJExtension.h>
#import "Party.h"

@implementation PartyResult

+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"Data" : [Party class]};
}

@end
