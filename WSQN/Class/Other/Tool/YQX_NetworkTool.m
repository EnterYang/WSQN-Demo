//
//  YQX_NetworkTool.m
//  WSQN
//
//  Created by yangqingxu on 16/1/20.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "YQX_NetworkTool.h"
#import <AFNetworking/AFNetworking.h>

@implementation YQX_NetworkTool

+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    [session POST:url parameters:params constructingBodyWithBlock:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params formDataArray:(NSArray *)formDataArray success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    // 1.创建请求管理对象
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    [session POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull totalFormData) {
        for (YQX_FormData *formData in formDataArray) {
            
            [totalFormData appendPartWithFileData:formData.data name:formData.name fileName:formData.filename mimeType:formData.mimeType];
        }
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);

    }];
}

+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    [session GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}


@end
/**
 *  用来封装文件数据的模型
 */
@implementation YQX_FormData

@end
