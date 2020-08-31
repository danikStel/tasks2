#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
  NSMutableArray *arrA = [[NSMutableArray alloc] initWithCapacity:[a length]];
    for (int i=0; i < [a length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [a characterAtIndex:i]];
        [arrA addObject:ichar];
    }
    NSMutableArray *arrB = [[NSMutableArray alloc] initWithCapacity:[b length]];
       for (int i=0; i < [b length]; i++) {
           NSString *ichar  = [NSString stringWithFormat:@"%c", [b characterAtIndex:i]];
           [arrB addObject:ichar];
       }
    NSLog(@"%@",arrB);
    arrA = [arrA valueForKeyPath:@"capitalizedString"];
   // NSArray* arrNewA = [arrA sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSUInteger counter = 0;
    NSLog(@"%lu",[b length]-1);
    for (NSUInteger i = 0 ; i< [arrA count]; i++){
        for (NSUInteger j = 0; j < [arrB count]; j++){
            if ([[arrA objectAtIndex:i] isEqualToString:[arrB objectAtIndex:j]]){
                counter++;
            }
        }
    }
    if (counter >= [b length]){
        return @"YES";
    }
    else{
        return @"NO";
    }
    
//    NSLog(@"%@",arrNewA);
    return @"Test";
}
@end
