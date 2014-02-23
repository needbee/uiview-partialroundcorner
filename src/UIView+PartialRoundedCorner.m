//
//  UIButton+PartialRoundedCorner.m
//  Scriptive
//
//  Created by Josh Justice on 10/11/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import "UIView+PartialRoundedCorner.h"

@implementation UIView (PartialRoundedCorner)

-(void)setCornerRadius:(float)r direction:(int)direction
{
    CALayer *maskLayer = [CALayer layer];
    maskLayer.cornerRadius = r;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;

    CGRect f = self.bounds;
    CGPoint o = f.origin;
    CGSize s = f.size;
    switch (direction) {
        case UIViewPartialRoundedCornerDirectionTop: {
            maskLayer.frame = CGRectMake( o.x, o.y, s.width, s.height + r );
        }
            break;
        case UIViewPartialRoundedCornerDirectionBottom: {
            maskLayer.frame = CGRectMake( o.x, o.y - r, s.width, s.height + r );
        }
            break;
        case UIViewPartialRoundedCornerDirectionLeft: {
            maskLayer.frame = CGRectMake( o.x, o.y, s.width + r, s.height );
        }
            break;
        case UIViewPartialRoundedCornerDirectionRight: {
            maskLayer.frame = CGRectMake( o.x - r, o.y, s.width + r, s.height );
        }
            break;
        case UIViewPartialRoundedCornerDirectionAll: { // may mask better than self.layer.cornerRadius
            maskLayer.frame = CGRectMake( o.x, o.y, s.width, s.height );
        }
            break;
        default: {
            // do nothing
        }
    }

    self.layer.mask = maskLayer;

}

@end
