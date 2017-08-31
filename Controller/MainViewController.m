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

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) MainListViewModel *mainListViewModel;
@property (nonatomic, strong) NSMutableArray *mainListArrs;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainTableView];
    [self getData];
}

- (void)getData{
    typeof(self) __weak weakSelf = self;
    MainListViewModel *mainListVM = [[MainListViewModel alloc] init];
    [mainListVM setBlockWithReturnBlock:^(id returnValue) {
        [weakSelf.mainListArrs addObjectsFromArray:returnValue];
        [weakSelf.mainTableView reloadData];
    } errorBlock:^(id errorCode) {
        
    } ];
    
    [mainListVM getData];
}

- (UITableView *)mainTableView{
    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
        _mainTableView.delegate = self;
        _mainTableView.dataSource = self;
        _mainTableView.estimatedRowHeight = 40;
        _mainTableView.rowHeight = UITableViewAutomaticDimension;
        _mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mainTableView registerNib:[UINib nibWithNibName:@"MainListTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainListTableViewCell"];
    }
    return _mainTableView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MainListTableViewCell *cell = (MainListTableViewCell *)[MainListTableViewCell cellForTableView:tableView cellForRowAtIndexPath:indexPath];
    cell.listModel = self.mainListArrs[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mainListArrs.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MainListViewModel *listVM = [[MainListViewModel alloc] init];
    [listVM pushMainDetailViewControllerWithSuperController:self model:_mainListArrs[indexPath.row]];
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
