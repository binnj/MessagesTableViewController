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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  `JSQMessagesToolbarButtonFactory` is a factory that provides a means for creating the default
 *  toolbar button items to be displayed in the content view of a `JSQMessagesInputToolbar`.
 */
@interface JSQMessagesToolbarButtonFactory : NSObject

/**
 *  Creates and returns a new button that is styled as the default accessory button. 
 *  The button has a paper clip icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultAccessoryButtonItem;

/**
 *  Creates and returns a new button that is styled as the default photo button.
 *  The button has a photo icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultPhotoButtonItem;

/**
 *  Creates and returns a new button that is styled as the default video button.
 *  The button has a video icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultVideoButtonItem;

/**
 *  Creates and returns a new button that is styled as the default location button.
 *  The button has a location icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultLocationButtonItem;

/**
 *  Creates and returns a new button that is styled as the default poll button.
 *  The button has a poll icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultPollButtonItem;

/**
 *  Creates and returns a new button that is styled as the default photoOrVideo button.
 *  The button has a photoOrVideo icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultPhotoOrVideoButtonItem;

/**
 *  Creates and returns a new button that is styled as the default send button.
 *  The button has title text `@"Send"` and no image.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultSendButtonItem;

/**
 *  Creates and returns a new button that is styled as the default send button.
 *  The button has title text and no image.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultButtonItemWithTitle:(NSString*)title;

@end
