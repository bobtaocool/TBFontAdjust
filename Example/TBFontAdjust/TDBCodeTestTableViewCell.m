//
//  TDBCodeTestTableViewCell.m
//  TBFontAdjust
//
//  Created by bob on 2017/11/28.
//  Copyright © 2017年 1639008265@qq.com. All rights reserved.
//

#import "TDBCodeTestTableViewCell.h"

@implementation TDBCodeTestTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(15, 20, [UIScreen mainScreen].bounds.size.width, 21)];
        
        label.font=[UIFont systemFontOfSize:17];
        
        label.text=@"你好(标签纯代码测试)";
        
        label.textColor=[UIColor blackColor];
        
        [self.contentView addSubview:label];
        
        
        UILabel *Blodlabel=[[UILabel alloc]initWithFrame:CGRectMake(15, label.frame.origin.y+label.frame.size.height+8, [UIScreen mainScreen].bounds.size.width-30, 21)];
        
        Blodlabel.font=[UIFont boldSystemFontOfSize:17];
        
        Blodlabel.text=@"你好(纯代码粗体测试)";
        
        Blodlabel.textColor=[UIColor blackColor];
        
        [self.contentView addSubview:Blodlabel];
        
        
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.frame=CGRectMake(15, Blodlabel.frame.origin.y+Blodlabel.frame.size.height+8, [UIScreen mainScreen].bounds.size.width-30, 21);
        
        [btn setTitle:@"你好(按钮纯代码测试)" forState:UIControlStateNormal];
        
        btn.titleLabel.font=[UIFont systemFontOfSize:17];
        
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [self.contentView addSubview:btn];
        
        
        UITextField *textFile=[[UITextField alloc]initWithFrame:CGRectMake(15, btn.frame.origin.y+btn.frame.size.height+8, [UIScreen mainScreen].bounds.size.width-30, 30)];
        
        textFile.textColor=[UIColor blackColor];
        
        textFile.text=@"你好(输入框纯代码测试)";
        
        textFile.font=[UIFont systemFontOfSize:17];
        
        [self.contentView addSubview:textFile];
        
        
        UITextView *textView=[[UITextView alloc]initWithFrame:CGRectMake(15, textFile.frame.origin.y+textFile.frame.size.height+8, [UIScreen mainScreen].bounds.size.width-30, 30)];
        
        textView.textColor=[UIColor blackColor];
        
        textView.font=[UIFont systemFontOfSize:17];
        
        textView.text=@"你好(textView纯代码测试)";
        
        [self.contentView addSubview:textView];
        
    
    }
    
    return self;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
