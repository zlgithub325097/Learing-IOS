//
//  UIBaseScrollViewController.m
//  coding++
//
//  Created by L_R on 2018/12/29.
//  Copyright © 2018年 L_R. All rights reserved.
//

#import "ZLUIListScrollViewController.h"
#import "ZLBaseUIScrollViewController.h"

@interface ZLUIListScrollViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arr;
@end

typedef NS_ENUM(NSInteger,ScrollView)
{
    ScrollView_Base,
};

@implementation ZLUIListScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"List-of-Scroll";
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width) style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    _arr = @[@"base-ScrollView"];
}

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
    static NSString *listScrollViewCell = @"listScrollViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listScrollViewCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:listScrollViewCell];
    }
    cell.textLabel.text = _arr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZLBaseUIScrollViewController *baseScrollViewVc = [[ZLBaseUIScrollViewController alloc] init];
    switch (indexPath.row) {
        case ScrollView_Base:
            [self.navigationController pushViewController:baseScrollViewVc animated:YES];
            break;
            
        default:
            break;
    }
}
@end
