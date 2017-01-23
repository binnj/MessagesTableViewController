//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesToolbarContentView.h"

#import "UIView+JSQMessages.h"

const CGFloat kJSQMessagesToolbarContentViewHorizontalSpacingDefault = 8.0f;


@interface JSQMessagesToolbarContentView ()

@property (weak, nonatomic) IBOutlet JSQMessagesComposerTextView *textView;

@property (weak, nonatomic) IBOutlet UIView *leftBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftBarButtonContainerViewWidthConstraint;

@property (weak, nonatomic) IBOutlet UIView *photoBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *photoBarButtonContainerViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *photoBarButtonContainerViewLeftPaddingConstraint;

@property (weak, nonatomic) IBOutlet UIView *videoBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *videoBarButtonContainerViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *videoBarButtonContainerViewLeftPaddingConstraint;

@property (weak, nonatomic) IBOutlet UIView *locationBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *locationBarButtonContainerViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *locationBarButtonContainerViewLeftPaddingConstraint;

@property (weak, nonatomic) IBOutlet UIView *pollBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pollBarButtonContainerViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pollBarButtonContainerViewLeftPaddingConstraint;

@property (weak, nonatomic) IBOutlet UIView *rightBarButtonContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightBarButtonContainerViewWidthConstraint;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftHorizontalSpacingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightHorizontalSpacingConstraint;

@end



@implementation JSQMessagesToolbarContentView

#pragma mark - Class methods

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesToolbarContentView class])
                          bundle:[NSBundle bundleForClass:[JSQMessagesToolbarContentView class]]];
}

#pragma mark - Initialization

- (void)awakeFromNib
{
    [super awakeFromNib];

    [self setTranslatesAutoresizingMaskIntoConstraints:NO];

    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.rightHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;

    self.backgroundColor = [UIColor clearColor];
}

- (void)dealloc
{
    _textView = nil;
    _leftBarButtonItem = nil;
    _rightBarButtonItem = nil;
    _leftBarButtonContainerView = nil;
    _photoBarButtonContainerView = nil;
    _videoBarButtonContainerView = nil;
    _locationBarButtonContainerView = nil;
    _pollBarButtonContainerView = nil;
    _rightBarButtonContainerView = nil;
}

#pragma mark - Setters

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    self.leftBarButtonContainerView.backgroundColor = backgroundColor;
    self.photoBarButtonContainerView.backgroundColor = backgroundColor;
    self.videoBarButtonContainerView.backgroundColor = backgroundColor;
    self.locationBarButtonContainerView.backgroundColor = backgroundColor;
    self.pollBarButtonContainerView.backgroundColor = backgroundColor;
    self.rightBarButtonContainerView.backgroundColor = backgroundColor;
}

- (void)setLeftBarButtonItem:(UIButton *)leftBarButtonItem
{
    if (_leftBarButtonItem) {
        [_leftBarButtonItem removeFromSuperview];
    }
    
    if (!leftBarButtonItem) {
        _leftBarButtonItem = nil;
        self.leftHorizontalSpacingConstraint.constant = 0.0f;
        self.leftBarButtonItemWidth = 0.0f;
        self.leftBarButtonContainerView.hidden = YES;
        return;
    }
    
    if (CGRectEqualToRect(leftBarButtonItem.frame, CGRectZero)) {
        leftBarButtonItem.frame = self.leftBarButtonContainerView.bounds;
    }
    
    self.leftBarButtonContainerView.hidden = NO;
    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.leftBarButtonItemWidth = CGRectGetWidth(leftBarButtonItem.frame);
    
    [leftBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.leftBarButtonContainerView addSubview:leftBarButtonItem];
    [self.leftBarButtonContainerView jsq_pinAllEdgesOfSubview:leftBarButtonItem];
    [self setNeedsUpdateConstraints];
    
    _leftBarButtonItem = leftBarButtonItem;
}

- (void)setLeftBarButtonItemWidth:(CGFloat)leftBarButtonItemWidth
{
    self.leftBarButtonContainerViewWidthConstraint.constant = leftBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setPhotoBarButtonItem:(UIButton *)photoBarButtonItem
{
    if (_photoBarButtonItem) {
        [_photoBarButtonItem removeFromSuperview];
    }
    
    if (!photoBarButtonItem) {
        _photoBarButtonItem = nil;
        self.leftHorizontalSpacingConstraint.constant = 0.0f;
        self.photoBarButtonItemWidth = 0.0f;
        self.photoBarButtonContainerView.hidden = YES;
        return;
    }
    
    if (CGRectEqualToRect(photoBarButtonItem.frame, CGRectZero)) {
        photoBarButtonItem.frame = self.photoBarButtonContainerView.bounds;
    }
    
    self.photoBarButtonContainerView.hidden = NO;
    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.photoBarButtonItemWidth = CGRectGetWidth(photoBarButtonItem.frame);
    
    [photoBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.photoBarButtonContainerView addSubview:photoBarButtonItem];
    [self.photoBarButtonContainerView jsq_pinAllEdgesOfSubview:photoBarButtonItem];
    [self setNeedsUpdateConstraints];
    
    _photoBarButtonItem = photoBarButtonItem;
}

- (void)setPhotoBarButtonItemWidth:(CGFloat)photoBarButtonItemWidth
{
    self.photoBarButtonContainerViewWidthConstraint.constant = photoBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setVideoBarButtonItem:(UIButton *)videoBarButtonItem
{
    if (_videoBarButtonItem) {
        [_videoBarButtonItem removeFromSuperview];
    }
    
    if (!videoBarButtonItem) {
        _videoBarButtonItem = nil;
        self.leftHorizontalSpacingConstraint.constant = 0.0f;
        self.videoBarButtonItemWidth = 0.0f;
        self.videoBarButtonContainerView.hidden = YES;
        return;
    }
    
    if (CGRectEqualToRect(videoBarButtonItem.frame, CGRectZero)) {
        videoBarButtonItem.frame = self.videoBarButtonContainerView.bounds;
    }
    
    self.videoBarButtonContainerView.hidden = NO;
    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.videoBarButtonItemWidth = CGRectGetWidth(videoBarButtonItem.frame);
    
    [videoBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.videoBarButtonContainerView addSubview:videoBarButtonItem];
    [self.videoBarButtonContainerView jsq_pinAllEdgesOfSubview:videoBarButtonItem];
    [self setNeedsUpdateConstraints];
    
    _videoBarButtonItem = videoBarButtonItem;
}

- (void)setVideoBarButtonItemWidth:(CGFloat)videoBarButtonItemWidth
{
    self.videoBarButtonContainerViewWidthConstraint.constant = videoBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setLocationBarButtonItem:(UIButton *)locationBarButtonItem
{
    if (_locationBarButtonItem) {
        [_locationBarButtonItem removeFromSuperview];
    }
    
    if (!locationBarButtonItem) {
        _locationBarButtonItem = nil;
        self.leftHorizontalSpacingConstraint.constant = 0.0f;
        self.locationBarButtonItemWidth = 0.0f;
        self.locationBarButtonContainerView.hidden = YES;
        return;
    }
    
    if (CGRectEqualToRect(locationBarButtonItem.frame, CGRectZero)) {
        locationBarButtonItem.frame = self.locationBarButtonContainerView.bounds;
    }
    
    self.locationBarButtonContainerView.hidden = NO;
    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.locationBarButtonItemWidth = CGRectGetWidth(locationBarButtonItem.frame);
    
    [locationBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.locationBarButtonContainerView addSubview:locationBarButtonItem];
    [self.locationBarButtonContainerView jsq_pinAllEdgesOfSubview:locationBarButtonItem];
    [self setNeedsUpdateConstraints];
    
    _locationBarButtonItem = locationBarButtonItem;
}

- (void)setLocationBarButtonItemWidth:(CGFloat)locationBarButtonItemWidth
{
    self.locationBarButtonContainerViewWidthConstraint.constant = locationBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setPollBarButtonItem:(UIButton *)pollBarButtonItem
{
    if (_pollBarButtonItem) {
        [_pollBarButtonItem removeFromSuperview];
    }
    
    if (!pollBarButtonItem) {
        _pollBarButtonItem = nil;
        self.leftHorizontalSpacingConstraint.constant = 0.0f;
        self.pollBarButtonItemWidth = 0.0f;
        self.pollBarButtonContainerView.hidden = YES;
        return;
    }
    
    if (CGRectEqualToRect(pollBarButtonItem.frame, CGRectZero)) {
        pollBarButtonItem.frame = self.pollBarButtonContainerView.bounds;
    }
    
    self.pollBarButtonContainerView.hidden = NO;
    self.leftHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.pollBarButtonItemWidth = CGRectGetWidth(pollBarButtonItem.frame);
    
    [pollBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.pollBarButtonContainerView addSubview:pollBarButtonItem];
    [self.pollBarButtonContainerView jsq_pinAllEdgesOfSubview:pollBarButtonItem];
    [self setNeedsUpdateConstraints];
    
    _pollBarButtonItem = pollBarButtonItem;
}

- (void)setPollBarButtonItemWidth:(CGFloat)pollBarButtonItemWidth
{
    self.pollBarButtonContainerViewWidthConstraint.constant = pollBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setRightBarButtonItem:(UIButton *)rightBarButtonItem
{
    if (_rightBarButtonItem) {
        [_rightBarButtonItem removeFromSuperview];
    }

    if (!rightBarButtonItem) {
        _rightBarButtonItem = nil;
        self.rightHorizontalSpacingConstraint.constant = 0.0f;
        self.rightBarButtonItemWidth = 0.0f;
        self.rightBarButtonContainerView.hidden = YES;
        return;
    }

    if (CGRectEqualToRect(rightBarButtonItem.frame, CGRectZero)) {
        rightBarButtonItem.frame = self.rightBarButtonContainerView.bounds;
    }

    self.rightBarButtonContainerView.hidden = NO;
    self.rightHorizontalSpacingConstraint.constant = kJSQMessagesToolbarContentViewHorizontalSpacingDefault;
    self.rightBarButtonItemWidth = CGRectGetWidth(rightBarButtonItem.frame);

    [rightBarButtonItem setTranslatesAutoresizingMaskIntoConstraints:NO];

    [self.rightBarButtonContainerView addSubview:rightBarButtonItem];
    [self.rightBarButtonContainerView jsq_pinAllEdgesOfSubview:rightBarButtonItem];
    [self setNeedsUpdateConstraints];

    _rightBarButtonItem = rightBarButtonItem;
}

- (void)setRightBarButtonItemWidth:(CGFloat)rightBarButtonItemWidth
{
    self.rightBarButtonContainerViewWidthConstraint.constant = rightBarButtonItemWidth;
    [self setNeedsUpdateConstraints];
}

- (void)setRightContentPadding:(CGFloat)rightContentPadding
{
    self.rightHorizontalSpacingConstraint.constant = rightContentPadding;
    [self setNeedsUpdateConstraints];
}

- (void)setLeftContentPadding:(CGFloat)leftContentPadding
{
    self.leftHorizontalSpacingConstraint.constant = leftContentPadding;
    [self setNeedsUpdateConstraints];
}

- (void)setPhotoContentPadding:(CGFloat)photoBarButtonContentPadding
{
    self.photoBarButtonContainerViewLeftPaddingConstraint.constant = photoBarButtonContentPadding;
    [self setNeedsUpdateConstraints];
}

- (void)setVideoContentPadding:(CGFloat)videoBarButtonContentPadding
{
    self.videoBarButtonContainerViewLeftPaddingConstraint.constant = videoBarButtonContentPadding;
    [self setNeedsUpdateConstraints];
}

- (void)setLocationBarButtonContentPadding:(CGFloat)locationBarButtonContentPadding
{
    self.locationBarButtonContainerViewLeftPaddingConstraint.constant = locationBarButtonContentPadding;
    [self setNeedsUpdateConstraints];
}

- (void)setPollBarButtonContentPadding:(CGFloat)pollBarButtonContentPadding
{
    self.pollBarButtonContainerViewLeftPaddingConstraint.constant = pollBarButtonContentPadding;
    [self setNeedsUpdateConstraints];
}

#pragma mark - Getters

- (CGFloat)leftBarButtonItemWidth
{
    return self.leftBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)photoBarButtonItemWidth
{
    return self.photoBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)videoBarButtonItemWidth
{
    return self.videoBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)locationBarButtonItemWidth
{
    return self.locationBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)pollBarButtonItemWidth
{
    return self.pollBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)rightBarButtonItemWidth
{
    return self.rightBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)rightContentPadding
{
    return self.rightHorizontalSpacingConstraint.constant;
}

- (CGFloat)leftContentPadding
{
    return self.leftHorizontalSpacingConstraint.constant;
}

- (CGFloat)photoBarButtonContentPadding
{
    return self.photoBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)videoBarButtonContentPadding
{
    return self.videoBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)locationBarButtonContentPadding
{
    return self.locationBarButtonContainerViewWidthConstraint.constant;
}

- (CGFloat)pollBarButtonContentPadding
{
    return self.pollBarButtonContainerViewWidthConstraint.constant;
}

#pragma mark - UIView overrides

- (void)setNeedsDisplay
{
    [super setNeedsDisplay];
    [self.textView setNeedsDisplay];
}

@end
