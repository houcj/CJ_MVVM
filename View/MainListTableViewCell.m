//
//  MainListTableViewCell.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/23.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainListTableViewCell.h"

@implementation MainListTableViewCell

- (void)setListModel:(MainListModel *)listModel{
    _listModel = listModel;
    
    _titleLabel.text = listModel.nickname;
    _timeLabel.text = listModel.avatar_source;
}

+ (UITableViewCell *)cellForTableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MainListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainListTableViewCell"];
    if (!cell) {
        cell = [[MainListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainListTableViewCell"];
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor whiteColor];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
