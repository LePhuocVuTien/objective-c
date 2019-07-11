//
//  UIView+PullOfController.m
//  objective-C
//
//  Created by iMacbook on 7/11/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import "UIView+PullOfController.h"

@implementation UIView (PullOfController)
- (void)removePullOfController:(UIView *)view {
    view.hidden = YES;
    [view.heightAnchor constraintEqualToConstant:0].active = YES;
}
@end
