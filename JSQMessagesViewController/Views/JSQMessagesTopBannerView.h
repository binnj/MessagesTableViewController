//
//  JSQMessagesTopBannerView.h
//  Dollarama
//
//  Created by besat@morgiij.com on 2017-03-10.
//  Copyright © 2017 binnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSQMessagesTopBannerView;

/**
 *  A constant defining the default height of a `JSQMessagesTopBannerView`.
 */
FOUNDATION_EXPORT const CGFloat kJSQMessagesTopBannerViewHeight;

/**
 *  The `JSQMessagesTopBannerView` class implements a reusable view that can be placed
 *  at the top of a `JSQMessagesCollectionView`.
 *  This view can be used as a way for the user to see message of the day.
 */
@interface JSQMessagesTopBannerView : UIView

/**
 *  Returns the label of the header view.
 */
@property (weak, nonatomic, readonly) UILabel *topBannerLabel;

/**
 *  Specifies the height of the top banner.
 */
@property (assign, nonatomic) CGFloat topBannerViewHeight;

/**
 *  Specifies the top inset of the top banner.
 */
@property (assign, nonatomic) CGFloat topBannerViewTop;

/**
 *  Specifies the background color of the top banner.
 */
@property (assign, nonatomic) UIColor* backgroundColor;

@end
