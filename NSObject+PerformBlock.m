//
//  NSObject+PerformBlock.m
//  GuideOne
//
//  Created by Carlos Oliva G. on 18-04-11.
//  Copyright 2011 iDev Software. All rights reserved.
//
// Taken from http://stackoverflow.com/questions/4007023/blocks-instead-of-performselectorwithobjectafterdelay

#import "NSObject+PerformBlock.h"


@implementation NSObject (PerformBlock)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay {
	block = [[block copy] autorelease];
    [self performSelector:@selector(fireBlock:) withObject:block afterDelay:delay];
}


- (void)fireBlock:(void (^)(void))block {
	block();
}


- (void)performBlockInBackground:(void (^)(void))block {
	block = [[block copy] autorelease];
	[self performSelectorInBackground:@selector(fireBlock:) withObject:block];	
}


- (void)performBlockOnMainThread:(void (^)(void))block waitUntilDone:(BOOL)wait {
	block = [[block copy] autorelease];
	[self performSelectorOnMainThread:@selector(fireBlock:) withObject:block waitUntilDone:wait];
}


@end
