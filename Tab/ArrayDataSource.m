//
//  ArrayDataSource.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/9/5.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "ArrayDataSource.h"
#import "MainListTableViewCell.h"

@implementation ArrayDataSource

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier mainListTableViewCellBlock:(CellBlock)aCellBlock{
    if (self = [super init]) {
        _items = anItems;
        _cellId = aCellIdentifier;
        _cellBlock = aCellBlock;
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    id cell = [tableView dequeueReusableCellWithIdentifier:_cellId forIndexPath:indexPath];
    id item = [self itemsAtIndexPath:indexPath];
    self.cellBlock(cell, item);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _items.count;
}

- (id)itemsAtIndexPath:(NSIndexPath *)indexPath{
    return _items[(NSInteger) indexPath.row];
}

@end
