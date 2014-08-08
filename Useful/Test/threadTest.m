//
//  threadTest.m
//  Useful
//
//  Created by ixdtech on 14-8-8.
//  Copyright (c) 2014年 IceKey. All rights reserved.
//

#import "threadTest.h"

@implementation threadTest

-(void)threadTest{
    //        for (int i=0; i<9; i++) {
    //            dispatch_async(dispatch_get_global_queue(0, 0), ^{
    //                [NSThread sleepForTimeInterval:5.0f];
    //                NSLog(@"dispatch_get_global_queue");
    //                dispatch_async(dispatch_get_main_queue(), ^{
    //                    NSLog(@"dispatch_get_main_queue");
    //                });
    //            });
    //        }
    //比较上下两种方法的异同
    //        dispatch_async(dispatch_queue_t queue, ^{
    //            code
    //        })
    //        dispatch_async(dispatch_get_global_queue(0, 0), ^{
    //            for (int i=0; i<9; i++) {
    //                [NSThread sleepForTimeInterval:5.0f];
    //                NSLog(@"dispatch_get_global_queue");
    //                dispatch_async(dispatch_get_main_queue(), ^{
    //                    NSLog(@"dispatch_get_main_queue");
    //                });
    //            }
    //        });
    
    for (int i=0; i<9; i++) {
        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
            NSLog(@"是否是主线程？：%hhd",[NSThread isMainThread]);
            [NSThread sleepForTimeInterval:1.0f];
            NSLog(@"dispatch_get_global_queue");
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"dispatch_get_main_queue");
            });
        });
    }
    
    
    //        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
    //            for (int i=0; i<9; i++) {
    //                [NSThread sleepForTimeInterval:5.0f];
    //                NSLog(@"dispatch_get_global_queue");
    //                dispatch_async(dispatch_get_main_queue(), ^{
    //                    NSLog(@"dispatch_get_main_queue");
    //                });
    //            }
    //        });
}

@end
