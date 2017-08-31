//
//  NetRequest.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ReturnValueBlock)(id returnValue);
typedef void(^ErrorCodeBlock)(id errorCode);

@interface NetRequest : NSObject

+ (void)requestGetWithURL:(NSString *)urlStr
                parameter:(NSDictionary *)parameter
         returnValueBlock:(ReturnValueBlock)returnValue
           errorCodeBlock:(ErrorCodeBlock)errorCode;

+ (void)requestPostWithURL:(NSString *)urlStr
                parameter:(NSDictionary *)parameter
         returnValueBlock:(ReturnValueBlock)returnValue
           errorCodeBlock:(ErrorCodeBlock)errorCode;

@end
