//Bill class consists of the bill type and the bill amount

#import <Foundation/Foundation.h>
@interface Bill:NSObject
{
	int billtype;
	double billamt;	
}
@property int billtype;
@property double billamt;

-(void) print;
@end
