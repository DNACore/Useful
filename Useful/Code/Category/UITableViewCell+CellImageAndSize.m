//
//  UITableViewCell+CellImageAndSize.m
//

#import "UITableViewCell+CellImageAndSize.h"

@implementation UITableViewCell (CellImageAndSize)


-(void)cellImage:(UIImage *)image andSize:(CGSize)size{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size.width, size.height), NO, 0.0);
    [image drawInRect:CGRectMake(0.0, 0.0, size.width, size.height)];
    self.imageView.image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end
