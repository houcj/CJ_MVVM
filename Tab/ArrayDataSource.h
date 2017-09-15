//
//  ArrayDataSource.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/9/5.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^CellBlock)(id cell, id model);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

@property (nonatomic) NSArray *items;
@property (nonatomic) NSString *cellId;
@property (nonatomic) CellBlock cellBlock;

- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
mainListTableViewCellBlock:(CellBlock)aCellBlock;

@end
