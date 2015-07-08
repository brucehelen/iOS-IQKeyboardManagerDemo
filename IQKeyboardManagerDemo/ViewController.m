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

@interface ViewController () <UIGestureRecognizerDelegate>

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
    
//    BZAllInOneView *view = [[BZAllInOneView alloc] initWithFrame:CGRectMake(10, 200, 200, 200)];
//    [self.view addSubview:view];
    
    
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 50)];
        [button setTitle:@"点击我" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        button.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
        [self.view addSubview:button];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 50)];
        imageView.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
        NSLog(@"imageView = %d", imageView.userInteractionEnabled);
        [button addSubview:imageView];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(35, 0, 30, 50)];
        NSLog(@"label = %d", label.userInteractionEnabled);
        label.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
        [button addSubview:label];
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 50)];
        // 默认为YES，设置为NO即可将消息传到下面的view
        view.userInteractionEnabled = NO;
        view.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.6];
        // single tap gesture recognizer
        UITapGestureRecognizer *tapGestureRecognize = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureRecognizer:)];
        tapGestureRecognize.delegate = self;
        tapGestureRecognize.numberOfTapsRequired = 1;
        [view addGestureRecognizer:tapGestureRecognize];
        [button addSubview:view];
    });
}

- (void)singleTapGestureRecognizer:(UITapGestureRecognizer *)tapGesture
{
    NSLog(@"singleTapGestureRecognizer");
}

- (void)buttonDidClicked:(UIButton *)sender
{
    NSLog(@"clicked");
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan = %@", event);
}

@end
