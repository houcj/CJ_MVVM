//
//  NetRequest.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "NetRequest.h"
#import <AFNetworking/AFNetworking.h>
#import "MainBaseModel.h"

@implementation NetRequest

+ (void)requestGetWithURL:(NSString *)urlStr parameter:(NSDictionary *)parameter returnValueBlock:(ReturnValueBlock)returnValue errorCodeBlock:(ErrorCodeBlock)errorCode{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/JavaScript",@"text/html",@"text/plain", nil];
    
    [manager GET:urlStr parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        MainBaseModel *model = [[MainBaseModel alloc] initWithDictionary:responseObject error:nil];
        returnValue(model.users);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorCode(error);
    }];
}

+ (void)requestPostWithURL:(NSString *)urlStr parameter:(NSDictionary *)parameter returnValueBlock:(ReturnValueBlock)returnValue errorCodeBlock:(ErrorCodeBlock)errorCode{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/JavaScript",@"text/html",@"text/plain", nil];
    
    [manager POST:urlStr parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        MainBaseModel *model = [[MainBaseModel alloc] initWithData:responseObject error:nil];
//        NSMutableArray *lists = [NSMutableArray array];
//        for (int i = 0; i < 5; i ++) {
//            MainListModel *model = [[MainListModel alloc] init];
////            model.title = [NSString stringWithFormat:@"标题:%d",i];
////            model.content = [NSString stringWithFormat:@"内容:%d",i];
////            model.time = [NSString stringWithFormat:@"2017-08-24 15:14:0%d",i];
//            [lists addObject:model];
//        }
        
        returnValue(model.users);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorCode(error);
    }];
}

@end
