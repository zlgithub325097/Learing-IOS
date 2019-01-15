//
//  ZLKLCommonViewController.m
//  coding++
//
//  Created by L_R on 2019/1/15.
//  Copyright © 2019年 L_R. All rights reserved.
//

#import "ZLKLCommonViewController.h"
#import "ZLBlock_ViewController.h"
#import "ZLBlock_A_ReverseValueViewController.h"
#import "ZLBlock_Para_ViewController.h"

typedef NS_ENUM(NSInteger,knowledgeType) {
    knowledgeType_Block,
    knowledgeType_Block_ReverseValue,
    knowledgeType_Block_Para
};

@interface ZLKLCommonViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arr;
@end

@implementation ZLKLCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Knowledge-Summary";
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _arr = @[@"block",@"block_reverseValue",@"Block_Para"];
    
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
    ZLBlock_ViewController *listScrollViewVc = [[ZLBlock_ViewController alloc] init];
    ZLBlock_A_ReverseValueViewController *reverseVc = [[ZLBlock_A_ReverseValueViewController alloc] init];
    ZLBlock_Para_ViewController *paraVc = [[ZLBlock_Para_ViewController alloc] init];
    switch (indexPath.row) {
        case knowledgeType_Block:
            [self.navigationController pushViewController:listScrollViewVc animated:YES];
            break;
        case knowledgeType_Block_ReverseValue:
            [self.navigationController pushViewController:reverseVc animated:YES];
        default:
            case knowledgeType_Block_Para:
            [self.navigationController pushViewController:paraVc animated:YES];
            break;
    }
}
@end
