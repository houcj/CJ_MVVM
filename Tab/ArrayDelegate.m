//
//  ArrayDelegate.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/9/5.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "ArrayDelegate.h"
#import "MainListTableViewCell.h"
#import "MainDetailViewController.h"

@implementation ArrayDelegate

//此处有待完善
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MainDetailViewController *detailVC = [[MainDetailViewController alloc] init];
    detailVC.listModel = [self itemOfIndexPath:indexPath];
    UINavigationController *nav = (UINavigationController *)[self getCurrentVC];
    [nav pushViewController:detailVC animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 134.0;
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    MainListTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"arrayDelegateTitle_Highlight--%zd",indexPath.row];
}

- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    MainListTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"arrayDelegateTitle_UnHighlight--%zd",indexPath.row];
}

- (id)itemOfIndexPath:(NSIndexPath *)indexPath{
    return [self.items objectAtIndex:indexPath.row];
}

//获取当前屏幕显示的viewcontroller
- (UIViewController *)getCurrentVC
{
    
    //获取当前屏幕显示的viewcontroller
    UIViewController *appRootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *topVC = appRootVC;
    if (topVC.presentedViewController) {
        topVC = topVC.presentedViewController;
    }
    
//    UIViewController *result = nil;
//    
//    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
//    if (window.windowLevel != UIWindowLevelNormal)
//    {
//        NSArray *windows = [[UIApplication sharedApplication] windows];
//        for(UIWindow * tmpWin in windows)
//        {
//            if (tmpWin.windowLevel == UIWindowLevelNormal)
//            {
//                window = tmpWin;
//                break;
//            }
//        }
//    }
//    
//    UIView *frontView = [[window subviews] objectAtIndex:0];
//    id nextResponder = [frontView nextResponder];
//    
//    if ([nextResponder isKindOfClass:[UIViewController class]])
//        result = nextResponder;
//    else
//        result = window.rootViewController;
    
    return topVC;
}

@end
