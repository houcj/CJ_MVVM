//
//  MainListViewModel.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "PublicViewModel.h"
#import "MainListModel.h"
#import <UIKit/UIKit.h>


@interface MainListViewModel : PublicViewModel

- (void)getData;

- (void)pushMainDetailViewControllerWithSuperController:(UIViewController *)superVC model:(MainListModel *)model;

@end
