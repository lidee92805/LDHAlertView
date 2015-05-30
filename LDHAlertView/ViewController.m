//
//  ViewController.m
//  LDHAlertView
//
//  Created by lidehua on 15/5/29.
//  Copyright (c) 2015年 李德华. All rights reserved.
//

#import "ViewController.h"
#import "LDHAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(UIButton *)sender {
    UIView * yellowView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 100)];
    yellowView.backgroundColor = [UIColor whiteColor];
    LDHAlertView * alertView = [LDHAlertView alertControllerWithTitle:@"标题" message:nil customView:yellowView];
    [alertView addAction:[LDHAlertAction actionWithTitle:@"重新选择" style:LDHAlertActionStyleDefault handler:^(LDHAlertAction *action) {
        NSLog(@"%@",action.title);
    }]];
//    [alertView addAction:[LDHAlertAction actionWithTitle:@"确认" style:LDHAlertActionStyleDestructive handler:^(LDHAlertAction *action) {
//        NSLog(@"%@",action.title);
//    }]];
//    [alertView addAction:[LDHAlertAction actionWithTitle:@"确认" style:LDHAlertActionStyleDestructive handler:^(LDHAlertAction *action) {
//        NSLog(@"%@",action.title);
//    }]];
    [alertView show];
}
@end
