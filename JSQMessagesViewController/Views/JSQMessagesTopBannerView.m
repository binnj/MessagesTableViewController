//
//  JSQMessagesTopBannerView.m
//  Dollarama
//
//  Created by 8707839 CANADA INC. on 2017-03-10.
//  Copyright © 2017 binnj. All rights reserved.
//

#import "JSQMessagesTopBannerView.h"
#import "NSBundle+JSQMessages.h"

@interface JSQMessagesTopBannerView ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewHeightConstraint;

@end

@implementation JSQMessagesTopBannerView

-(void)setTopBannerViewTop:(CGFloat)topBannerViewTop
{
    _topBannerViewTop = topBannerViewTop;
    self.topBannerViewTopConstraint.constant = topBannerViewTop;
    [self setNeedsUpdateConstraints];
}

-(void)setTopBannerViewHeight:(CGFloat)topBannerViewHeight
{
    _topBannerViewHeight = topBannerViewHeight;
    self.topBannerViewHeightConstraint.constant = topBannerViewHeight;
    [self setNeedsUpdateConstraints];
}

@end
