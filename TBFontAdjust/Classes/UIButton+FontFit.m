//
//  UIButton+FontFit.m
//  SafeFoodManagerDemo
//
//  Created by bob on 2017/9/15.
//  Copyright © 2017年 bob. All rights reserved.
//此方法适用于xib

#import "UIButton+FontFit.h"
#import "NSObject+TBAdd.h"
@implementation UIButton (FontFit)

+(void)load
{
    [[self class] swizzleInstanceMethod:@selector(initWithCoder:) with:@selector(TB_InitWithCoder:)];
    
}

- (id)TB_InitWithCoder:(NSCoder*)aDecode{
    
    [self TB_InitWithCoder:aDecode];
    
    CGFloat pt = self.titleLabel.font.pointSize;
    
    self.titleLabel.font = [UIFont systemFontOfSize:pt];//这个方法会进行字体转换
    
    return self;
}


@end
