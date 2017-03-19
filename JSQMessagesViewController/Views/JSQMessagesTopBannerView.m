//
//  JSQMessagesTopBannerView.m
//  Dollarama
//
//  Created by besat@morgiij.com on 2017-03-10.
//  Copyright © 2017 binnj. All rights reserved.
//

#import "JSQMessagesTopBannerView.h"
#import "NSBundle+JSQMessages.h"

@interface JSQMessagesTopBannerView ()

@property (weak, nonatomic) IBOutlet UILabel *topBannerLabel;
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

-(void)resizeForWidth:(CGFloat)width
{
    CGSize size = [self.topBannerLabel sizeThatFits:CGSizeMake(width - 40, CGFLOAT_MAX)];
    self.topBannerViewHeightConstraint.constant = size.height + 44.0f;
    [self setNeedsUpdateConstraints];
}

-(void)setText:(NSString *)motdText
{
    self.topBannerLabel.text = motdText;
    [self resizeForWidth:self.bounds.size.width];
}

-(CGFloat)topBannerHeight
{
    return self.topBannerViewHeightConstraint.constant;
}

@end
