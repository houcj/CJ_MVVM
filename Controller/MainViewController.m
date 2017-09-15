//
//  MainViewController.m
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/23.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "MainViewController.h"
#import "MainListTableViewCell.h"
#import "MainListViewModel.h"
#import "ArrayDataSource.h"
#import "ArrayDelegate.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface MainViewController ()

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) MainListViewModel *mainListViewModel;
@property (nonatomic, strong) NSMutableArray *mainListArrs;
@property (nonatomic) ArrayDataSource *arrayDataSource;
@property (nonatomic) ArrayDelegate   *arrayDelegate;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainTableView];
    [self getData];
}

- (void)getData{
    
    
    void (^mainlistTableViewCell)(MainListTableViewCell *, MainListModel *) = ^(MainListTableViewCell *cell, MainListModel *model){
        [cell setModel:model];
    };
    _arrayDataSource = [[ArrayDataSource alloc] initWithItems:_mainListArrs cellIdentifier:@"MainListTableViewCell" mainListTableViewCellBlock:mainlistTableViewCell];
    self.mainTableView.dataSource = _arrayDataSource;
    
    
    typeof(self) __weak weakSelf = self;
    MainListViewModel *mainListVM = [[MainListViewModel alloc] init];
    [mainListVM setBlockWithReturnBlock:^(id returnValue) {
        [weakSelf.mainListArrs addObjectsFromArray:returnValue];
        weakSelf.arrayDataSource.items = weakSelf.mainListArrs;
        weakSelf.arrayDelegate.items = weakSelf.mainListArrs;
        [weakSelf.mainTableView reloadData];
    } errorBlock:^(id errorCode) {
        
    } ];
    
    [mainListVM getData];
}

- (UITableView *)mainTableView{
    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
        _arrayDataSource = [[ArrayDataSource alloc] init];
        _arrayDelegate = [[ArrayDelegate alloc] init];
        _mainTableView.delegate = _arrayDelegate;
        _mainTableView.dataSource = _arrayDataSource;
        _mainTableView.estimatedRowHeight = 40;
        _mainTableView.rowHeight = UITableViewAutomaticDimension;
        _mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mainTableView registerNib:[UINib nibWithNibName:@"MainListTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainListTableViewCell"];
    }
    return _mainTableView;
}

- (NSMutableArray *)mainListArrs{
    if (!_mainListArrs) {
        _mainListArrs = [[NSMutableArray alloc] init];
    }
    return _mainListArrs;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
