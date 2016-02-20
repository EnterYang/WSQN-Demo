//
//  PartViewController.m
//  WSQN
//
//  Created by yangqingxu on 16/1/20.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "PartyViewController.h"
#import "PartyTableViewCell.h"
#import "YQX_GetDataTool.h"
#import "PartyParam.h"
#import "Party.h"

@interface PartyViewController ()

@property (weak, nonatomic) IBOutlet UITableView *partyTableView;
@property (strong,nonatomic) NSMutableArray *partys;
@end

@implementation PartyViewController{

    NSMutableArray *lodedIndex;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    lodedIndex = [NSMutableArray mutableCopy];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSMutableArray *)partys
{
    if (_partys == nil) {
        _partys = [NSMutableArray array];
    }
    return _partys;
}


- (void)loadData{
    
    PartyParam *param = [PartyParam param];
    
    param.city_id = @52;
    param.lat = @0;
    param.lng = @0;
    param.page = @0;
    param.regionname = nil;
    param.user_id = @2159;
    
    [YQX_GetDataTool homeStatusesWithParam:param success:^(PartyResult *result) {
        
        for (Party *party in result.Data) {            
            [self.partys addObject:party];
        }
        
        [self.partyTableView reloadData];
        
    } failure:^(NSError *error) {
        NSLog(@"erro %@",error);
    }];
    
        
        
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.partys.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.创建cell
    
    PartyTableViewCell *cell = [PartyTableViewCell cellWithTableView:tableView];
    
    cell.party = self.partys[indexPath.row];
    
    // 2.传递frame模型
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 175;
}

@end
