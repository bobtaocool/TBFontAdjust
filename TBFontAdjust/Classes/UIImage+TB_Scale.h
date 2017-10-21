//
//  UIImage+TB_Scale.h
//  SafeFoodManagerDemo
//
//  Created by bob on 2017/10/17.
//  Copyright © 2017年 bob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TB_Scale)

/**
 保持长宽比剪裁
 
 @param image 原图
 @param asize 剪裁尺寸
 @return image
 */
- (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image size:(CGSize)asize;

@end
