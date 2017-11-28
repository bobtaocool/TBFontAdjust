//
//  UIFont+Font.m
//  SafeFoodManagerDemo
//
//  Created by bob on 2017/9/15.
//  Copyright © 2017年 bob. All rights reserved.
//注释:此方法只对手写的有效

#import "UIFont+Font.h"
#import "NSObject+TBAdd.h"
@implementation UIFont (Font)

+(void)load
{
    [self swizzleClassMethod:@selector(systemFontOfSize:) with:@selector(TB_systemFontOfSize:)];
    
    [self swizzleClassMethod:@selector(boldSystemFontOfSize:) with:@selector(TB_boldSystemFontOfSize:)];
    
}

+ (UIFont *)TB_systemFontOfSize:(CGFloat)pxSize{
    
    /*
     ps和pt转换
     
     px:相对长度单位。像素（Pixel）。（PS字体）
     pt:绝对长度单位。点（Point）。（iOS字体）
     UI标记图上给我们字体的大小一般都是像素点，如图
     
     */
    UIFont *font = [UIFont TB_systemFontOfSize:pxSize*[UIScreen mainScreen].bounds.size.width/TB_UIScreen];

    return font;
}


+(UIFont*)TB_boldSystemFontOfSize:(CGFloat)pxSize
{
    UIFont *font = [UIFont TB_boldSystemFontOfSize:pxSize*[UIScreen mainScreen].bounds.size.width/TB_UIScreen];
    
    return font;
}

@end
