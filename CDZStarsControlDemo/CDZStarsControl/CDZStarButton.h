//
//  CDZStarButton.h
//  CDZStarsControlDemo
//
//  Created by Nemocdz on 2017/5/20.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDZStarButton : UIButton

@property (nonatomic, strong) UIImage *normalImage;
@property (nonatomic, strong) UIImage *highlightedImage;
@property (nonatomic, assign) CGFloat fractionPart;
- (instancetype)initWithSize:(CGSize)size;
- (CGFloat)fractionPartOfPoint:(CGPoint)point;
@end
