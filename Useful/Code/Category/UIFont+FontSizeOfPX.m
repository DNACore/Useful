//
//  UIFont+FontSizeByPX.m
//

#import "UIFont+FontSizeOfPX.h"

@implementation UIFont (FontSizeOfPX)

+(UIFont *)fontSizeOfPXValue:(CGFloat)PXValue{
    return [UIFont systemFontOfSize:(PXValue+2)/2];//[UIFont systemFontOfSize:(PXValue*72/96)];
}

@end
