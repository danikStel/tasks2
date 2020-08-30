#import "TimeConverter.h"

@implementation TimeConverter
//At minutes = 0, use o' clock. For 1 <= minutes <= 30, use past, and for 30 < minutes use to.
//Note the space between the apostrophe and clock in o' clock. Write a program which prints the time in words for the input given in the format described.
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSMutableArray *arr = [[NSMutableArray alloc]init];
       arr = [NSMutableArray arrayWithObjects:@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"nine",@"ten",@"eleven",@"twelwe",@"thirteen",@"fourteen",@"quarter",@"sixteen",@"seventeen",@"eighteen",@"nineteen",@"twenty",@"twenty one",@"twenty two",@"twenty three",@"twenty four",@"twenty five",@"twenty six",@"twenty seven",@"twenty eight",@"twenty nine",@"half",nil];
    if ([hours intValue]>12 || [hours intValue] <0  || [minutes intValue]>60 || [minutes intValue]<0){
    return @"";
    }
    if ([minutes isEqualToString:@"00"]){
        return [[arr objectAtIndex:[hours integerValue] -1] stringByAppendingString:@" o'clock"];
    }
    if (([minutes intValue]) <= 30 && ([minutes intValue] >= 1)){
        NSString *sH = [arr objectAtIndex:[hours integerValue]-1];
        NSString *sM = [arr objectAtIndex:[minutes integerValue]-1];
        if ([sM isEqualToString:@"quarter"] || [sM isEqualToString:@"half"]){
            return [[sM stringByAppendingString:@" past "] stringByAppendingString:sH];
        }
        NSLog(@"%@",[[sM stringByAppendingString:@" minutes past "] stringByAppendingString:sH]);
        return [[sM stringByAppendingString:@" minutes past "] stringByAppendingString:sH];
    }
    if ([minutes intValue] > 30 )
    {
        NSString *sNewM = [arr objectAtIndex:60-[minutes integerValue]-1];
        NSString *sNewH = [arr objectAtIndex: [hours intValue]];
        if ([sNewM isEqualToString:@"quarter"]){
            return [[sNewM stringByAppendingString:@" to "] stringByAppendingString:sNewH];
        }
        NSLog(@"%@",[[sNewM stringByAppendingString:@" minutes to "] stringByAppendingString:sNewH]);
       return  [[sNewM stringByAppendingString:@" minutes to "] stringByAppendingString:sNewH];
    }
    
    return @"";
}
@end
