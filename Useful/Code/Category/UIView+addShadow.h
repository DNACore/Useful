//
//  UIView+addShadow.h
//  Useful
//
//  Created by ixdtech on 14-8-4.
//  Copyright (c) 2014年 IceKey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (addShadow)


- (void)addShadowWithOffset:(CGSize)offset
                      radius:(CGFloat)radius
                       color:(UIColor *)color
                     opacity:(CGFloat)opacity;

@end
