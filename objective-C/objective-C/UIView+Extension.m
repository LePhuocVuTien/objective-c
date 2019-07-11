//
//  UIView+LayerShadow.m
//  objective-C
//
//  Created by iMacbook on 6/17/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import "UIView+Extension.h"
#import "UIColor+Extension.h"

@implementation UIView (Extension)

-(void) applyShadow:(UIView *)view OffsetX:(CGFloat)x OffsetY:(CGFloat)y blur:(CGFloat)radius opacity:(CGFloat)alpha                 RoundingCorners:(CGFloat)cornerRadius{
    [view.layer setShadowOpacity: alpha];
    [view.layer setShadowRadius: radius];
    [view.layer setShadowOffset: CGSizeMake(x,y)];
    [view.layer setShadowColor:[UIColor lightGrayColor].CGColor];
}

-(void) setBoder:(UIView *)view color:(UIColor *)color size:(CGFloat)size cornerRadius:(CGFloat)corner{
    view.layer.borderWidth = size;
    view.layer.borderColor = color.CGColor;
    view.layer.cornerRadius = corner;
}

//public override void DrawRect(CGRect area, UIViewPrintFormatter formatter)
//{
//    CGContext currentContext = UIGraphics.GetCurrentContext();
//    currentContext.SaveState();
//    currentContext.SetShadow(new CGSize(-15, 20), 5);
//    base.DrawRect(area, formatter);
//    currentContext.RestoreState();
//}
@end
