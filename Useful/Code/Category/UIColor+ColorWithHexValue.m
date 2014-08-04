//
//  UIColor+ColorWithHexValue.m
//

#import "UIColor+ColorWithHexValue.h"

@implementation UIColor (ColorWithHexValue)

//+ (UIColor*) colorWithHex:(long)hexColor;
//{
//    return [UIColor colorWithHex:hexColor alpha:1.];
//}
//
//+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity
//{
//    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
//    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
//    float blue = ((float)(hexColor & 0xFF))/255.0;
//    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
//}
+(UIColor *)colorWithHex:(NSString *)HexValue{
    if (HexValue == nil) {
        return nil;
    }
    
    unsigned int red, green, blue;
    NSRange range;
    range.length = 2;
    
    range.location = 1;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&red];
    range.location = 3;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&green];
    range.location = 5;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:1.0f];
}

+ (UIColor *)colorWithHex:(NSString *)HexValue alpha:(float)opacity{
    if (HexValue == nil) {
        return nil;
    }
    
    unsigned int red, green, blue;
    NSRange range;
    range.length = 2;
    
    range.location = 1;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&red];
    range.location = 3;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&green];
    range.location = 5;
    [[NSScanner scannerWithString:[HexValue substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:opacity];
}

@end
