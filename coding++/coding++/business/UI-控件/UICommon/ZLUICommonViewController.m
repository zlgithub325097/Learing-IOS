//
//  ZLUICommonViewController.m
//  coding++
//
//  Created by L_R on 2018/12/27.
//  Copyright © 2018年 L_R. All rights reserved.
//

#import "ZLUICommonViewController.h"
#import "ZLUIListScrollViewController.h"
@interface ZLUICommonViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arr;

@end


typedef NS_ENUM(NSInteger,UI)
{
    UI_UIScrollView,
    UI_UITableView
};

@implementation ZLUICommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UI-Summary";
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _arr = @[@"UIScrollView",@"UITableView"];
    
}



#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *uiCell = @"uiCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:uiCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:uiCell];
    }
    cell.textLabel.text = _arr[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZLUIListScrollViewController *listScrollViewVc = [[ZLUIListScrollViewController alloc] init];
    switch (indexPath.row) {
        case UI_UIScrollView:
            [self.navigationController pushViewController:listScrollViewVc animated:YES];
            break;
        case UI_UITableView:
            
            break;
        default:
            break;
    }
}
@end
