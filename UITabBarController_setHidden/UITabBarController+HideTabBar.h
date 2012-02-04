//
//  UITabBarController+HideTabBar.h
//  NPS
//
//  Created by Carlos Oliva on 04-02-12.
//  Copyright (c) 2012 iDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (HideTabBar)

@property (nonatomic, getter=isTabBarHidden) BOOL tabBarHidden;

- (void)setTabBarHidden:(BOOL)hidden animated:(BOOL)animated;


@end
