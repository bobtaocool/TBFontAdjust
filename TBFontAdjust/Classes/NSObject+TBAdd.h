//
//  NSObject+TBAdd.h
//  Pods
//
//  Created by bob on 2017/11/28.
//

#import <Foundation/Foundation.h>

@interface NSObject (TBAdd)

+ (BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel;

+ (BOOL)swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel;

@end
