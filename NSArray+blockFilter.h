//
//  NSArray+blockFilter.h
//  ChatTest
//
//  Created by Carlos Oliva on 31-07-11.
//  Copyright 2011 iDev Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (blockFilter)

- (NSArray *)filteredArrayOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))test;


@end
