//
//  UIWebView+ContentHeight.m
//
//  Created by Carlos Oliva G. <carlos@idevsoftware.net> on 10/9/09.
//  Copyright 2009 iDev Software. All rights reserved.
//

#import "UIWebView+ContentHeight.h"


@implementation UIWebView (ContentHeight)

- (CGFloat)contentHeight {
	return [[self stringByEvaluatingJavaScriptFromString:@"document.body.offsetHeight + document.body.offsetTop;"] floatValue];
}


@end
