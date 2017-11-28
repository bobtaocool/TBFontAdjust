//
//  TDBViewController.m
//  TBFontAdjust
//
//  Created by 1639008265@qq.com on 10/21/2017.
//  Copyright (c) 2017 1639008265@qq.com. All rights reserved.
//

#import "TDBViewController.h"
#import "TDBTableViewCell.h"
#import "TDBCodeTestTableViewCell.h"
#import "TDBHeadView.h"

#define Xib @"Xib"

#define Code @"Code"

#define Head @"Head"

@interface TDBViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *TestTableView;

@property(nonatomic,strong)NSMutableArray *dataArr;


@end

@implementation TDBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.TestTableView];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark-懒加载
-(NSMutableArray*)dataArr
{
    if (!_dataArr) {
        
        _dataArr=[@[@"代码测试",@"xib测试"]mutableCopy];
        
    }
    
    return _dataArr;
}

-(UITableView*)TestTableView
{
    if (!_TestTableView) {
        
        _TestTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStylePlain];
        
        _TestTableView.delegate=self;
        
        _TestTableView.dataSource=self;
        
        _TestTableView.tableFooterView=[[UIView alloc]init];
        
        [_TestTableView registerNib:[UINib nibWithNibName:@"TDBTableViewCell" bundle:nil] forCellReuseIdentifier:Xib];
        
        [_TestTableView registerClass:[TDBCodeTestTableViewCell class] forCellReuseIdentifier:Code];
        
        [_TestTableView registerClass:[TDBHeadView class] forHeaderFooterViewReuseIdentifier:Head];
        
        
    }
    
    return _TestTableView;
}


#pragma mark-tableview代理方法

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.dataArr.count;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0) {
        
        TDBCodeTestTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Code];
        
        return cell;
        
    }else{
        
        TDBTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Xib];
        
        return cell;
        
    }
 
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 200;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 40;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    TDBHeadView *head=[tableView dequeueReusableHeaderFooterViewWithIdentifier:Head];
    
    head.headTitle=self.dataArr[section];
    
    return head;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
