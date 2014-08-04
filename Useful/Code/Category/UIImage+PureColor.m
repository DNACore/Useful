//
//  UIImage+PureColor.m
//

#import "UIImage+PureColor.h"

@implementation UIImage (PureColor)

+(UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size{
    UIImage *img = nil;
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,
                                   color.CGColor);
    CGContextFillRect(context, rect);
    img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

@end
