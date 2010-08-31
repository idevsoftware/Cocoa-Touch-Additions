//
//  NSValue+CLLocationCoordinate2D.m
//
//  Created by Carlos Oliva G. <carlos@idevsoftware.net> on 26-04-10.
//  Copyright 2010 iDev Software. All rights reserved.
//

#import "NSValue+CLLocationCoordinate2D.h"

@implementation NSValue (CLLocationCoordinate2D)


+ (NSValue *)valueWithCLLocationCoordinate2D:(CLLocationCoordinate2D)coordinate {
	NSValue *value = [[NSValue alloc] initWithBytes:&coordinate 
										   objCType:@encode(CLLocationCoordinate2D)];
	return [value autorelease];
}


- (CLLocationCoordinate2D)CLLocationCoordinate2DValue {
	CLLocationCoordinate2D location;  
	[self getValue:&location]; 
	return location;
}


@end
