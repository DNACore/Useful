//
//  NSDate+DateToString.m
//

#import "NSDate+DateToString.h"

@implementation NSDate (DateToString)
+(NSString *)stringOfDay:(NSDate *)date{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"yyyy-mm-dd";
    return [dateFormatter stringFromDate:date];
}
@end
