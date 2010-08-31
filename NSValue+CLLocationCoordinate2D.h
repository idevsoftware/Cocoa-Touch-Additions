//
//  NSValue+CLLocationCoordinate2D.h
//
//  Created by Carlos Oliva G. <carlos@idevsoftware.net> on 26-04-10.
//  Copyright 2010 iDev Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface NSValue (CLLocationCoordinate2D)

+ (NSValue *)valueWithCLLocationCoordinate2D:(CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)CLLocationCoordinate2DValue;


@end
