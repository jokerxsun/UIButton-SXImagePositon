//
//  UIButton+ImagePositionAndHitArea.h
//  ButtonCategory
//
//  Created by sunxu on 2017/6/30.
//  Copyright © 2017年 isunxu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ImagePosition) {
    ImagePositionLeft = 0,  // 图片在左，文字在右，默认
    ImagePositionRight,     // 图片在右，文字在左
    ImagePositionTop,       // 图片在上，文字在下
    ImagePositionBottom,    // 图片在下，文字在上
};

@interface UIButton (ImagePositionAndHitArea)

/**
 UIButton set the image position

 @param postion The position of the image relative to the title
 @param spacing The space of the image relative to the title
 */
- (void)setImagePosition:(ImagePosition)postion spacing:(CGFloat)spacing;

@property(nonatomic, assign) UIEdgeInsets hitTestEdgeInsets;

@end
