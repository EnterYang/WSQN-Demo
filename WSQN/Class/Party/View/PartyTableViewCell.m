//
//  PartyTableViewCell.m
//  WSQN
//
//  Created by yangqingxu on 16/1/21.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "PartyTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <SDWebImage/UIButton+WebCache.h>
#import <Masonry/Masonry.h>
#import "Actor.h"

@interface PartyTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *h1Label;
@property (weak, nonatomic) IBOutlet UILabel *h2Label;
@property (weak, nonatomic) IBOutlet UIView *actorsView;
@end

@implementation PartyTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"PartyTableViewCellIdentifier";
    
    PartyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[PartyTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)addActorButtonWithActor:(Actor *)actor index:(NSInteger)index {
    CGFloat padding1 = 10;
    UIButton *actorBtn = [[UIButton alloc]init];
    
    [self.actorsView addSubview:actorBtn];
    
    [actorBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(self.actorsView.mas_centerY);
        
        make.left.equalTo(self.actorsView.mas_left).with.offset(padding1+index*55);
        
        //make.top.equalTo(self.actorsView.mas_top).with.offset(padding1);
        make.size.mas_equalTo(CGSizeMake(45, 45));
    }];
    [actorBtn setBackgroundColor:[UIColor whiteColor]];
    [actorBtn.layer setMasksToBounds:YES];
    [actorBtn.layer setCornerRadius:23];
    [actorBtn.layer setBorderWidth:1.0];
    [actorBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    [actorBtn sd_setBackgroundImageWithURL:[NSURL URLWithString:actor.avatar] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"人-占位图"]];
    
    
    NSLog(@"%d %@ %@",actor.user_id,actor.avatar,NSStringFromCGRect(actorBtn.frame));
}

- (void)setParty:(Party *)party{
    
    _party = party;
    
    [self.backgroundImageView sd_setImageWithURL:[NSURL URLWithString:self.party.img]];
    self.h1Label.text = self.party.h1;
    self.h2Label.text = self.party.h2;

    for (NSInteger i = 0; i<self.party.actor.count; i++) {
        Actor *actor = self.party.actor[i];
        [self addActorButtonWithActor:actor index:i];
    }
    
//    for (Actor *actor in self.party.actor) {
//        NSLog(@"----------%d",actor.user_id);
//    }

}
@end
