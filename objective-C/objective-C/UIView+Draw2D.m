//
//  UIView+Draw2D.m
//  objective-C
//
//  Created by iMacbook on 6/18/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import "UIView+Draw2D.h"

@implementation UIView (Draw2D)
-(void) drawRect:(CGRect)rect{
    //[super drawRect:rect];
    CGRect rectangle = CGRectMake(0, 100, 320, 100);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextFillRect(context, rectangle);
}
@end
