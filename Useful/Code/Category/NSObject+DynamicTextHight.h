//
//  NSObject+DynamicTextHight.h
//  XueXunTong
//
//  Created by ixdtech on 14-7-31.
//  Copyright (c) 2014年 xdtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DynamicTextHight)

-(CGFloat)dynamicTextHightForString:(NSString *)string stringWidth:(float)stringWidth fontSize:(float)fontSize;

@end
