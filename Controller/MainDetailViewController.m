//
//  MainDetailViewController.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/29.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainDetailViewController.h"

@interface MainDetailViewController ()

@end

@implementation MainDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.listModel.nickname;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
