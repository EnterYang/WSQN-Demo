//
//  PartyTableViewCell.h
//  WSQN
//
//  Created by yangqingxu on 16/1/21.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"

@interface PartyTableViewCell : UITableViewCell

@property (nonatomic, strong) Party *party;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
