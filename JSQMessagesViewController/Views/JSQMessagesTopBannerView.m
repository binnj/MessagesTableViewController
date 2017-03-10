//
//  JSQMessagesTopBannerView.m
//  Dollarama
//
//  Created by besat@morgiij.com on 2017-03-10.
//  Copyright © 2017 binnj. All rights reserved.
//

#import "JSQMessagesTopBannerView.h"

#import "NSBundle+JSQMessages.h"


const CGFloat kJSQMessagesTopBannerViewHeight = 50.0f;


@interface JSQMessagesTopBannerView ()

@property (weak, nonatomic) IBOutlet UILabel *topBannerLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewHeightConstraint;

@end


@implementation JSQMessagesTopBannerView

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    self.topBannerLabel.backgroundColor = backgroundColor;
}

- (void)setTopBannerViewHeight:(CGFloat)topBannerViewHeight
{
    self.topBannerViewHeightConstraint.constant = topBannerViewHeight;
    [self setNeedsUpdateConstraints];
}

@end
