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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewHeightConstraint;

@end


@implementation JSQMessagesTopBannerView
@synthesize topBannerViewHeight = _topBannerViewHeight;

//- (void)setBackgroundColor:(UIColor *)backgroundColor
//{
//    [super setBackgroundColor:backgroundColor];
//    self.topBannerLabel.backgroundColor = backgroundColor;
//}

- (void)setTopBannerViewHeight:(CGFloat)topBannerViewHeight
{
    _topBannerViewHeight = topBannerViewHeight;
    self.topBannerViewHeightConstraint.constant = topBannerViewHeight;
    [self setNeedsUpdateConstraints];
}

-(CGFloat)topBannerViewHeight
{
    if (_topBannerViewHeight == NSNotFound) {
        CGSize size = [self.topBannerLabel sizeThatFits:CGSizeMake(self.topBannerLabel.bounds.size.width, CGFLOAT_MAX)];
        [self.topBannerLabel sizeToFit];
        self.topBannerViewHeight = self.topBannerLabel.bounds.size.height + 44.0f;
    }
    return _topBannerViewHeight;
}

-(void)setTopBannerViewTop:(CGFloat)topBannerViewTop
{
    _topBannerViewTop = topBannerViewTop;
    self.topBannerViewTopConstraint.constant = topBannerViewTop;
    _topBannerViewHeight = NSNotFound;
    [self setNeedsUpdateConstraints];
}

@end
