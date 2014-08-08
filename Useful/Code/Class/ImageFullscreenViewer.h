//
//  ImageFullscreenViewer.h
//  Useful
//
//  Copyright (c) 2014年 IceKey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageFullscreenViewer : NSObject

/*
 *引入此类之后,为自己需要放大的imageView添加tap手势
 *UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magnifyImage:)];
 *[self.imageView addGestureRecognizer:tap];
 *- (void)magnifyImage:(UITapGestureRecognizer *)tap
 *{
 *  NSLog(@"局部放大");
 *  [SJAvatarBrowser showImage:(UIImageView *)tap.view];//调用方法
 *}
 */

+(void)showImage:(UIImageView*)avatarImageView;

@end
