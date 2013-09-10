#import <Foundation/Foundation.h>
#import "bill.h"

#import "calctax.h"


int main(int argc,const char * argv[])
{
	int typ;
	double amount;
	
	Bill *bill=[[Bill alloc]init];
	CalcTax *cal=[[CalcTax alloc]init];
	NSLog(@"Enter your choice: 1-finished goods 2-groceries");
	scanf("%d",&typ);
	NSLog(@"Enter the principle amount");
	scanf("%lf",&amount);
	
	[bill setBilltype:typ];
	[bill setBillamt:amount];
	[cal caltax:typ andArg:amount]; //method caltax is called to calculate the tax
	
	[cal displaytax];
	[cal displayamt:amount];
	[bill print];    //displays the bill type chosen by the user and the principle amount 
	[bill release];
	[cal release];
	return 0;
}
