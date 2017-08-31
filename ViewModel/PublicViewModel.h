//
//  PublicViewModel.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ReturnValueBlock)(id returnValue);
typedef void(^ErrorCodeBlock)(id errorCode);

@interface PublicViewModel : NSObject

@property (nonatomic) ReturnValueBlock returnBlock;
@property (nonatomic) ErrorCodeBlock errorBlock;

- (void)setBlockWithReturnBlock:(ReturnValueBlock)returnBlock
                     errorBlock:(ErrorCodeBlock)errorBlock;

@end
