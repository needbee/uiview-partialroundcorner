//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 2/23/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"
#import "UIView+PartialRoundedCorner.h"

@interface NBViewController ()

@property (nonatomic,retain) IBOutlet UIView *topView;
@property (nonatomic,retain) IBOutlet UIView *bottomView;
@property (nonatomic,retain) IBOutlet UIView *leftView;
@property (nonatomic,retain) IBOutlet UIView *rightView;
@property (nonatomic,retain) IBOutlet UIView *allView;

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_topView setCornerRadius:10.0 direction:UIViewPartialRoundedCornerDirectionTop];
    [_bottomView setCornerRadius:10.0 direction:UIViewPartialRoundedCornerDirectionBottom];
    [_leftView setCornerRadius:10.0 direction:UIViewPartialRoundedCornerDirectionLeft];
    [_rightView setCornerRadius:10.0 direction:UIViewPartialRoundedCornerDirectionRight];
    [_allView setCornerRadius:10.0 direction:UIViewPartialRoundedCornerDirectionAll];
    
}

@end
