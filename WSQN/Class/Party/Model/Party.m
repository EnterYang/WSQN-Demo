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
//+ (instancetype)partyWithDict:(NSDictionary *)dict
//{
//    return [[self alloc] initWithDict:dict];
//}
//
//- (instancetype)initWithDict:(NSDictionary *)dict
//{
//    if (self = [super init]) {
//        
//        [self setValuesForKeysWithDictionary:dict];
//        
//        NSMutableArray *actorArray = [NSMutableArray array];
//        
//        for (NSDictionary *dict in self.actor) {
//            
//            Actor *actor = [Actor actorWithDict:dict];
//            [actorArray addObject:actor];
//        }
//        self.actor = actorArray;
//    }
//    return self;
//}
@end
