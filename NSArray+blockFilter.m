//
//  NSArray+blockFilter.m
//  ChatTest
//
//  Created by Carlos Oliva on 31-07-11.
//  Copyright 2011 iDev Software. All rights reserved.
//

#import "NSArray+blockFilter.h"

@implementation NSArray (blockFilter)

- (NSArray *)filteredArrayOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))test {
	NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:0];
	for(NSUInteger index = 0; index < [self count]; index++) {
		id element = [self objectAtIndex:index];
		BOOL stop = NO;
		if(test(element, index, &stop)) {
			[mutableArray addObject:element];
		}
		if(stop)
			break;
	}
	NSArray *returnArray = [NSArray arrayWithArray:mutableArray];
	[mutableArray release];
	return returnArray;
}


@end
