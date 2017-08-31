//
//  MainListViewModel.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainListViewModel.h"
#import "NetRequest.h"
#import "MainDetailViewController.h"

typedef void(^Success)(id returnValue);
typedef void(^Error)(id errorCode);

@implementation MainListViewModel

- (void)getData{
    
    [NetRequest requestGetWithURL:@"http://www.jianshu.com/users/recommended?seen_ids=&count=5&only_unfollowed=true" parameter:nil returnValueBlock:^(id returnValue) {
        NSLog(@"returnValue--------------%@",returnValue);
        self.returnBlock(returnValue);
    } errorCodeBlock:^(id errorCode) {
        NSLog(@"errorCode--------------%@",errorCode);
        self.errorBlock(errorCode);
    }];
    
//    [NetRequest requestPostWithURL:@"http://www.jianshu.com/users/recommended?seen_ids=&count=5&only_unfollowed=true" parameter:nil returnValueBlock:^(id returnValue) {
//        
//        self.returnBlock(returnValue);
//        
//    } errorCodeBlock:^(id errorCode) {
//        
//        self.errorBlock(errorCode);
//        
//    }];
}

- (void)pushMainDetailViewControllerWithSuperController:(UIViewController *)superVC model:(MainListModel *)model{
    MainDetailViewController *mainDetailVC = [[MainDetailViewController alloc] init];
    mainDetailVC.listModel = model;
    [superVC.navigationController pushViewController:mainDetailVC animated:YES];
}

@end
