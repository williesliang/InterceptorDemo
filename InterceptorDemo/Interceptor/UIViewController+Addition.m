//
//  UIViewController+Addition.m
//  InterceptorDemo
//
//  Created by deng on 16/11/15.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import "UIViewController+Addition.h"
#import <objc/runtime.h>

#define KeyIsInitTheme @"KeyIsInitTheme"

@implementation UIViewController (Addition)

#pragma mark - inline property
- (BOOL)isInitTheme {
    return objc_getAssociatedObject(self, KeyIsInitTheme);
}

- (void)setIsInitTheme:(BOOL)isInitTheme {
    objc_setAssociatedObject(self, KeyIsInitTheme, @(isInitTheme), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
