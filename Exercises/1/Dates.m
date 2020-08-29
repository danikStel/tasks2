#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    if ([day intValue] <0 || [day intValue]>31 || [month intValue] <0 || [month intValue] >12){
        return @"Такого дня не существует";
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ru_Ru"];
    NSString *monthName = [[dateFormatter monthSymbols ] objectAtIndex:[month intValue]-1];
    NSString *dmy = [[day stringByAppendingString:month] stringByAppendingString:year];
    [dateFormatter setDateFormat:@"ddMMyyyy"];
    NSDate *date = [dateFormatter dateFromString:dmy];
    NSLog(@"%@, %@",date,monthName);
    [dateFormatter setDateFormat:@"EEEE"];
    NSString *dayOfWeek = [dateFormatter stringFromDate:date];
    if (date!=NULL){
        return [[[[day stringByAppendingString:@" "] stringByAppendingString:monthName] stringByAppendingString:@", "] stringByAppendingString:dayOfWeek];
    }
    else{
        return @"Такого дня не существует";
    }

}
@end
