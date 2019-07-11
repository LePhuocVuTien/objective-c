//
//  UIView+LayerShadow.h
//  objective-C
//
//  Created by iMacbook on 6/17/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Extension)

-(void) applyShadow:(UIView *)view OffsetX:(CGFloat)x OffsetY:(CGFloat)y blur:(CGFloat)radius opacity:(CGFloat)alpha                 RoundingCorners:(CGFloat)cornerRadius;
-(void) setBoder:(UIButton *)button color:(UIColor *)color size:(CGFloat)size cornerRadius:(CGFloat)corner;

@end

NS_ASSUME_NONNULL_END
