//
//  ViewController.m
//  objective-C
//
//  Created by iMacbook on 6/17/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"
#import "UILabel+Extension.h"
#import "UIButton+Extension.h"
#import "UIColor+Extension.h"
#import "UIView+Draw2D.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *silentButton;
@property (weak, nonatomic) IBOutlet UIImageView *avataImage;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UIStackView *starRatingStackView;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIView *footerView;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *starButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_headerView applyShadow:_headerView OffsetX: 0.0 OffsetY: 1.0 blur: 0.3 opacity: 0.5 RoundingCorners: 1.0];
    float cornerSilentButton = _silentButton.bounds.size.height / 2;
    [_silentButton setBoder: _silentButton color:[UIColor colorFromHexString:@"#FFD22F" _alpha:0.8] size: 0.8 cornerRadius: cornerSilentButton];
    float cornerAvataImage = _avataImage.bounds.size.height / 2;
    [_avataImage setBoder: _avataImage color: [UIColor whiteColor] size: 0.0 cornerRadius:cornerAvataImage];
    [_address setText: @"3km, 강남 구신시 555-111 구신시 구신시 구신시 구신시 구신시"];
    
    NSLog(@"MM");
    // Do any additional setup after loading the view.
}

- (void) viewDidAppear:(BOOL)animated{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:CGPointMake((int32_t)self.footerView.frame.size.width/2 + 30, 0)];
    [path addLineToPoint:CGPointMake((int32_t)self.footerView.frame.size.width/2 - 30, 60)];
    [path addLineToPoint:CGPointMake(0, 60)];
    shapeLayer.path = path.CGPath;
    shapeLayer.fillColor = [UIColor colorWithRed:0.02 green:0.75 blue:0.96 alpha:1.0].CGColor;
    [self.footerView.layer addSublayer:shapeLayer ];
}

- (IBAction)showMessageApp:(id)sender {
    NSString *sms = @"sms:+84332410383&body=hello world.";
    NSString *url = [sms stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    UIApplication *application = [UIApplication sharedApplication];
    [application openURL:[NSURL URLWithString:url] options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Opened");
        }
    }];
}

- (IBAction)showPhoneApp:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString: @"tel:+84332410383"];
    [application openURL:url options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Opened");
        }
    }];
}

- (IBAction)delete:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"http://www.map4d.vn"];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Opened url");
        }
    }];
}

- (IBAction)starRating:(UIButton *)sender {
    NSString *starsEmptyPicName = @"StarEmptyIcon";
    NSString *starsFilledPicName = @"StarIcon";
    NSInteger store = sender.tag;
    for (UIButton *starBtn in _starButton) {
        if (starBtn.tag <= store) {
            [starBtn setImage:[UIImage imageNamed:starsFilledPicName] forState:UIControlStateNormal];
        }
        else {
            [starBtn setImage:[UIImage imageNamed:starsEmptyPicName] forState:UIControlStateNormal];
        }
    }
}

@end
