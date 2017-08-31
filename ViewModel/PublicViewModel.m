//
//  PublicViewModel.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "PublicViewModel.h"

@implementation PublicViewModel

- (void)setBlockWithReturnBlock:(ReturnValueBlock)returnBlock errorBlock:(ErrorCodeBlock)errorBlock{
    _returnBlock = returnBlock;
    _errorBlock = errorBlock;
}

@end
