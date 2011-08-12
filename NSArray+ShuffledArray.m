//
//  NSArray+ShuffledArray.m
//  GuideOne
//
//  Created by Carlos Oliva G. on 18-04-11.
//  Copyright 2011 iDev Software. All rights reserved.
//

#import "NSArray+ShuffledArray.h"


@implementation NSArray (ShuffledArray)


- (NSArray *)shuffledArray {
	return [self sortedArrayUsingComparator:^(id obj1, id obj2) {
		return (NSComparisonResult)(arc4random() % 3 - 1);    
	}];
}


@end
