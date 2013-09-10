#import "bill.h"
#import "calctax.h"

@implementation CalcTax 

-(double) caltax:(int)type andArg:(double)amt
{
	
	switch(type)
	{
		case 1://finished goods
		totaltax=(0.14)*amt;//kst=14%
		totaltax=(0.04)*(amt+totaltax);//cst=4%
		
		return totaltax;
		break;
		
		case 2://groceries
		totaltax=(0.08)*amt;//VAT=8%
		return totaltax;
		break;
		
		default:
		NSLog(@"Invalid choice! Choose 1-finished goods 2-groceries");
		break;
	}
	return totaltax;
}
-(void)displaytax
{
	NSLog(@"the final tax - %lf",totaltax);
}
-(void)displayamt:(double)amt
{
	NSLog(@"the final amount - %lf",totaltax+amt);
}	
@end
