//
//  NSNumber+NumberWithString.m
//  Useful
//
//  Created by ixdtech on 14-8-19.
//  Copyright (c) 2014年 IceKey. All rights reserved.
//

#import "NSNumber+NumberWithString.h"

@implementation NSNumber (NumberWithString)

+(NSNumber *)numberWithString:(NSString *)String{
    return [NSNumber numberWithInt:[String intValue]];
}

@end
