//
//  MainBaseModel.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainBaseModel.h"

@implementation MainBaseModel

+ (NSString *)protocolForArrayProperty:(NSString *)propertyName{
    if ([propertyName isEqualToString:@"users"]) {
        return NSStringFromClass([MainListModel class]);
    }
    return NSStringFromClass([NSDictionary class]);
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}

@end
