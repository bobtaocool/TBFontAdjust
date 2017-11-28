//
//  TDBHeadView.m
//  TBFontAdjust
//
//  Created by bob on 2017/11/28.
//  Copyright © 2017年 1639008265@qq.com. All rights reserved.
//

#import "TDBHeadView.h"

@interface TDBHeadView()

@property(nonatomic,strong)UILabel *titleLabel;

@end

@implementation TDBHeadView

-(instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithReuseIdentifier:reuseIdentifier]) {
 
        self.titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(15, 20, [UIScreen mainScreen].bounds.size.width, 21)];
        
        self.titleLabel.font=[UIFont boldSystemFontOfSize:18];
   
        self.titleLabel.textColor=[UIColor darkGrayColor];
        
        [self.contentView addSubview:self.titleLabel];
        
        
    }
    
    return self;
}

-(void)setHeadTitle:(NSString *)headTitle
{
    _headTitle=headTitle;
    
    self.titleLabel.text=headTitle;
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
