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

#import "JSQMessagesToolbarButtonFactory.h"

#import "UIColor+JSQMessages.h"
#import "UIImage+JSQMessages.h"
#import "NSBundle+JSQMessages.h"


@implementation JSQMessagesToolbarButtonFactory

+ (UIButton *)defaultAccessoryButtonItem
{
    UIImage *accessoryImage = [UIImage jsq_defaultAccessoryImage];
    UIImage *normalImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [accessoryButton setImage:normalImage forState:UIControlStateNormal];
    [accessoryButton setImage:highlightedImage forState:UIControlStateHighlighted];
    
    accessoryButton.contentMode = UIViewContentModeScaleAspectFit;
    accessoryButton.imageView.contentMode = UIViewContentModeCenter;
    accessoryButton.backgroundColor = [UIColor clearColor];
    accessoryButton.tintColor = [UIColor lightGrayColor];
    
    return accessoryButton;
}
+ (UIButton *)defaultPhotoButtonItem
{
    UIImage *photoImage = [UIImage jsq_defaultPhotoImage];
    UIImage *normalPhotoImage = [photoImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedPhotoImage = [photoImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *photoButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [photoButton setImage:normalPhotoImage forState:UIControlStateNormal];
    [photoButton setImage:highlightedPhotoImage forState:UIControlStateHighlighted];
    
    photoButton.contentMode = UIViewContentModeScaleAspectFit;
    photoButton.imageView.contentMode = UIViewContentModeCenter;
    photoButton.backgroundColor = [UIColor clearColor];
    photoButton.tintColor = [UIColor lightGrayColor];
    
    return photoButton;
}
+ (UIButton *)defaultVideoButtonItem
{
    UIImage *videoImage = [UIImage jsq_defaultVideoImage];
    UIImage *normalVideoImage = [videoImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedVideoImage = [videoImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *videoButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [videoButton setImage:normalVideoImage forState:UIControlStateNormal];
    [videoButton setImage:highlightedVideoImage forState:UIControlStateHighlighted];
    
    videoButton.contentMode = UIViewContentModeScaleAspectFit;
    videoButton.imageView.contentMode = UIViewContentModeCenter;
    videoButton.backgroundColor = [UIColor clearColor];
    videoButton.tintColor = [UIColor lightGrayColor];
    
    return videoButton;
}
+ (UIButton *)defaultLocationButtonItem
{
    UIImage *locationImage = [UIImage jsq_defaultLocationImage];
    UIImage *normalLocationImage = [locationImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedLocationImage = [locationImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *locationButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [locationButton setImage:normalLocationImage forState:UIControlStateNormal];
    [locationButton setImage:highlightedLocationImage forState:UIControlStateHighlighted];
    
    locationButton.contentMode = UIViewContentModeScaleAspectFit;
    locationButton.imageView.contentMode = UIViewContentModeCenter;
    locationButton.backgroundColor = [UIColor clearColor];
    locationButton.tintColor = [UIColor lightGrayColor];
    
    return locationButton;
}
+ (UIButton *)defaultPollButtonItem
{
    UIImage *pollImage = [UIImage jsq_defaultPollImage];
    UIImage *normalPollImage = [pollImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedPollImage = [pollImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *pollButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [pollButton setImage:normalPollImage forState:UIControlStateNormal];
    [pollButton setImage:highlightedPollImage forState:UIControlStateHighlighted];
    
    pollButton.contentMode = UIViewContentModeScaleAspectFit;
    pollButton.imageView.contentMode = UIViewContentModeCenter;
    pollButton.backgroundColor = [UIColor clearColor];
    pollButton.tintColor = [UIColor lightGrayColor];
    
    return pollButton;
}
+ (UIButton *)defaultPhotoOrVideoButtonItem
{
    UIImage *photoOrVideoImage = [UIImage jsq_defaultPhotoOrVideoImage];
    UIImage *normalPhotoOrVideoImage = [photoOrVideoImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedPhotoOrVideoImage = [photoOrVideoImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *photoOrVideoButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [photoOrVideoButton setImage:normalPhotoOrVideoImage forState:UIControlStateNormal];
    [photoOrVideoButton setImage:highlightedPhotoOrVideoImage forState:UIControlStateHighlighted];
    
    photoOrVideoButton.contentMode = UIViewContentModeScaleAspectFit;
    photoOrVideoButton.imageView.contentMode = UIViewContentModeCenter;
    photoOrVideoButton.backgroundColor = [UIColor clearColor];
    photoOrVideoButton.tintColor = [UIColor lightGrayColor];
    
    return photoOrVideoButton;
}

+ (UIButton *)defaultSendButtonItem
{
    return [self defaultButtonItemWithTitle:NSLocalizedString(@"Send", nil)];
}

+ (UIButton *)defaultButtonItemWithTitle:(NSString*)title
{
    UIButton *sendButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [sendButton setTitle:title forState:UIControlStateNormal];
    [sendButton setTitleColor:[UIColor jsq_messageBubbleBlueColor] forState:UIControlStateNormal];
    [sendButton setTitleColor:[[UIColor jsq_messageBubbleBlueColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [sendButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    sendButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    sendButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    sendButton.titleLabel.minimumScaleFactor = 0.85f;
    sendButton.contentMode = UIViewContentModeCenter;
    sendButton.backgroundColor = [UIColor clearColor];
    sendButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    CGFloat maxHeight = 32.0f;
    
    CGRect sendTitleRect = [title boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, maxHeight)
                                                   options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                                attributes:@{ NSFontAttributeName : sendButton.titleLabel.font }
                                                   context:nil];
    
    sendButton.frame = CGRectMake(0.0f,
                                  0.0f,
                                  CGRectGetWidth(CGRectIntegral(sendTitleRect)),
                                  maxHeight);
    
    return sendButton;
}

@end
