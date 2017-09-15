//
//  MainListTableViewCell.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/23.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainListModel.h"

@protocol CellConfigDelegate <NSObject>

- (NSString *)titleLabel;
- (NSString *)contentLabel;
- (NSString *)timeLabel;

@end

@interface MainListTableViewCell : UITableViewCell

@property (nonatomic) MainListModel *listModel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

- (void)setModel:(id<CellConfigDelegate>)listModel;

@property (nonatomic) NSString *cellIdentifier;


@end
