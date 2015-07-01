//
//  BZAllInOneView.m
//  IQKeyboardManagerDemo
//
//  Created by 朱正晶 on 15/7/1.
//  Copyright (c) 2015年 chisalsoft. All rights reserved.
//

#import "BZAllInOneView.h"
#import "BZTextFieldView.h"

@implementation BZAllInOneView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configView];
    }

    return self;
}

- (void)configView
{
    BZTextFieldView *view = [[BZTextFieldView alloc] initWithPlaceHolder:@"第一个测试"];
    view.frame = CGRectMake(0, 0, 200, 40);
    [self addSubview:view];
    
    BZTextFieldView *view2 = [[BZTextFieldView alloc] initWithPlaceHolder:@"第2个测试"];
    view2.frame = CGRectMake(0, 50, 200, 40);
    [self addSubview:view2];
    
    BZTextFieldView *view3 = [[BZTextFieldView alloc] initWithPlaceHolder:@"第3个测试"];
    view3.frame = CGRectMake(0, 100, 200, 40);
    [self addSubview:view3];
}


@end
