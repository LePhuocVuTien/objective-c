//
//  UIColor+Extension.h
//  objective-C
//
//  Created by iMacbook on 6/17/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)
+ (UIColor *)colorFromHexString:(NSString *)hexString _alpha:(CGFloat)_alpha;
@end

NS_ASSUME_NONNULL_END
