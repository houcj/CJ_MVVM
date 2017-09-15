//
//  ArrayDelegate.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/9/5.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ArrayDelegate : NSObject<UITableViewDelegate>

@property (nonatomic) NSArray  *items;
@property (nonatomic) NSString *cellId;

@end
