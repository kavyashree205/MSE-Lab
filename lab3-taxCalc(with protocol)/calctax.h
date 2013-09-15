#import <Foundation/Foundation.h>
#import "bill.h"
#import "Tax.h"
//CalcTax is the class in which the tax is calculated using the method caltax

@interface CalcTax :NSObject <Tax> //implementing the protocol Tax
{
		double totaltax;
}
-(double) caltax:(int)type andArg:(double)amt;//accepts two arguments-1.bill type 2.bill amount
-(void)displaytax; // displays the total calculated tax
-(void)displayamt:(double)amt;  //displays the total amount after adding tax
@end
