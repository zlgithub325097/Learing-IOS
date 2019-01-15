//
//  ZLBaseViewController.m
//  coding++
//
//  Created by L_R on 2018/12/26.
//  Copyright © 2018年 L_R. All rights reserved.
//

#import "ZLHomeViewController.h"
#import "ZLUICommonViewController.h"
#import "ZLKLCommonViewController.h"
@interface ZLHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arr;
@end

typedef NS_ENUM(NSInteger,SUMMARY)
{
    SUMMARY_ui,
    SUMMARY_network,
    SUMMARY_multithreading,
    SUMMARY_knowledge,
};

@implementation ZLHomeViewController

-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
      如果下面用 [tableView dequeueReusableCellWithIdentifier:baseCell forIndexPath:indexPath] 必须注册
      [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"baseCell"];
     如果用 [tableView dequeueReusableCellWithIdentifier:baseCell] 则不需要注册
     */
    self.title = @"IOS - 开发笔记";
    _arr = @[@"UI-控件",@"Network-网络",@"multithreading-多线程",@"knowledge-小知识点"];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
    self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


# pragma mark UITableViewDelegate

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
    static NSString * baseCell = @"baseCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:baseCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:baseCell];
    }
    cell.textLabel.text = _arr[indexPath.row];
    cell.backgroundColor = [UIColor greenColor];
    return cell;
}

# pragma mark UITableViewDataSource
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZLUICommonViewController *comUIVc = [[ZLUICommonViewController alloc] init];
    ZLKLCommonViewController *comKLVc = [[ZLKLCommonViewController alloc] init];
    switch (indexPath.row) {
        case SUMMARY_ui:
            [self.navigationController pushViewController:comUIVc animated:YES];
            break;
        case SUMMARY_network:
            
            break;
        case SUMMARY_multithreading:
            
            break;
        case SUMMARY_knowledge:
            [self.navigationController pushViewController:comKLVc animated:YES];
            break;
            
        default:
            break;
    }
}

@end
