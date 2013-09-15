//#import "bill.h"
//#import "calctax.h"
#import <Foundation/Foundation.h>

@protocol Tax <NSObject>  //Tax protocol
 
-(id) caltax:(int)type andArg:(double)amt;



@end