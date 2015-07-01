//
//  ViewController.m
//  IQKeyboardManagerDemo
//
//  Created by 朱正晶 on 15/7/1.
//  Copyright (c) 2015年 chisalsoft. All rights reserved.
//

#import "ViewController.h"
#import "BZTextFieldView.h"
#import "BZAllInOneView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 100, 40)];
    textField.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    textField.placeholder = @"测试1";
    [self.view addSubview:textField];

    UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
    textField2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    textField2.placeholder = @"测试2";
    [self.view addSubview:textField2];
    
    UITextField *textField3 = [[UITextField alloc] initWithFrame:CGRectMake(10, 150, 100, 40)];
    textField3.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    textField3.placeholder = @"测试3";
    [self.view addSubview:textField3];
    
    BZAllInOneView *view = [[BZAllInOneView alloc] initWithFrame:CGRectMake(10, 200, 200, 200)];
    [self.view addSubview:view];
}


@end
