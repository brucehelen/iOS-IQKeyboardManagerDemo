//
//  BZTextFieldView.m
//  IQKeyboardManagerDemo
//
//  Created by 朱正晶 on 15/7/1.
//  Copyright (c) 2015年 chisalsoft. All rights reserved.
//

#import "BZTextFieldView.h"

@implementation BZTextFieldView
{
    NSString *_placeHolder;
}

- (instancetype)initWithPlaceHolder:(NSString *)placeHolder
{
    self = [super init];
    if (self) {
        _placeHolder = placeHolder;
        [self configView];
    }
    
    return self;
}

- (void)configView
{
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    nameLabel.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
    nameLabel.text = @"名称";
    [self addSubview:nameLabel];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 0, 100, 40)];
    textField.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.3];
    textField.placeholder = _placeHolder;
    [self addSubview:textField];
}

@end
