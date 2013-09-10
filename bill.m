#import "bill.h"
@implementation Bill
@synthesize billtype;
@synthesize billamt;
//@property and @syntesize are used to assign the values to bill type and bill amount
-(void)print
{
	NSLog(@"The bill type given is %d",billtype);
	NSLog(@"The bill amount given is %lf",billamt);

}


@end
