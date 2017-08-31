//
//  MainBaseModel.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "MainListModel.h"

@interface MainBaseModel : JSONModel

@property (nonatomic) NSString *total_count;
@property (nonatomic) NSArray <MainListModel *> *users;

@end
