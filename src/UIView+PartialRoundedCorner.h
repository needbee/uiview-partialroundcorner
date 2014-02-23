//
//  UIButton+PartialRoundedCorner.h
//  Scriptive
//
//  Created by Josh Justice on 10/11/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIViewPartialRoundedCornerDirectionTop 0
#define UIViewPartialRoundedCornerDirectionRight 1
#define UIViewPartialRoundedCornerDirectionBottom 2
#define UIViewPartialRoundedCornerDirectionLeft 3
#define UIViewPartialRoundedCornerDirectionAll 4

@interface UIView (PartialRoundedCorner)

-(void)setCornerRadius:(float)radius direction:(int)direction;

@end
