//
//  MainListTableViewCell.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/23.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainListTableViewCell.h"

@implementation MainListTableViewCell

- (void)setModel:(id)listModel{
    _listModel = listModel;
    _titleLabel.text = _listModel.nickname;
    _timeLabel.text = _listModel.avatar_source;
}

//- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
//    [super setHighlighted:highlighted animated:animated];
//    if (highlighted) {
//        self.titleLabel.text = [NSString stringWithFormat:@"Cell_Highlight"];
//    }else{
//        self.titleLabel.text = [NSString stringWithFormat:@"Cell_UnHighlight"];
//    }
//}

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
