//
//  NSObject+DynamicTextHight.m
//  XueXunTong
//
//  Created by ixdtech on 14-7-31.
//  Copyright (c) 2014年 xdtech. All rights reserved.
//

#import "NSObject+DynamicTextHight.h"

@implementation NSObject (DynamicTextHight)

-(CGFloat)dynamicTextHightForString:(NSString *)string stringWidth:(float)stringWidth fontSize:(float)fontSize{
    CGFloat contentSizeHight;
    if (IsIOS7) {
        contentSizeHight=[string boundingRectWithSize:CGSizeMake(stringWidth, MAXFLOAT) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:fontSize]} context:nil].size.height;
    }
    else{
        contentSizeHight=[string sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(stringWidth, MAXFLOAT)].height;
    }
    return contentSizeHight;
}

@end
