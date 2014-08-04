//
//  UIColor+ColorWithHexValue.h
//

#import <UIKit/UIKit.h>


@interface UIColor (ColorWithHexValue)

+ (UIColor *)colorWithHex:(NSString *)HexValue;
+ (UIColor *)colorWithHex:(NSString *)HexValue alpha:(float)opacity;

@end
