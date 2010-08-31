//
//  UIColor+ColorFromString.m
//
//  Created by Carlos Oliva G. <carlos@idevsoftware.net> on 29-03-10.
//  Copyright 2010 iDev Software. All rights reserved.
//

#import "UIColor+ColorFromString.h"


@implementation UIColor(colorFromString)


+ (UIColor *)colorFromString:(NSString *)string {
	NSArray *colorArray = [string componentsSeparatedByString:@","];
	if([colorArray count] != 4)
		return nil;
	return [UIColor colorWithRed:[[colorArray objectAtIndex:0] floatValue] 
						   green:[[colorArray objectAtIndex:1] floatValue] 
							blue:[[colorArray objectAtIndex:2] floatValue] 
						   alpha:[[colorArray objectAtIndex:3] floatValue]];
}


@end
