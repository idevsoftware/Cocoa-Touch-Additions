//
//  UITextView+RoundedCorners.m
//
//  Created by Carlos Oliva G. <carlos@idevsoftware.net> on 31-08-10.
//  Copyright 2010 iDev Software. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UITextView+RoundedCorners.h"


@implementation UITextView (RoundedCorners)

- (void)setRoundedCorners:(BOOL)rounded {
	self.layer.borderWidth = (rounded ? 1 : 0);
	self.layer.cornerRadius = (rounded ? 8 : 0); 
	self.layer.borderColor = [(rounded ? [UIColor grayColor] : [UIColor blackColor]) CGColor];
}


@end
