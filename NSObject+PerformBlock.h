//
//  NSObject+PerformBlock.h
//  GuideOne
//
//  Created by Carlos Oliva G. on 18-04-11.
//  Copyright 2011 iDev Software. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSObject (PerformBlock)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;
- (void)performBlockInBackground:(void (^)(void))block;
- (void)performBlockOnMainThread:(void (^)(void))block waitUntilDone:(BOOL)wait;


@end
