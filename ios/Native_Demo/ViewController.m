//
//  ViewController.m
//  Native_Demo
//
//  Created by 乔杨 on 2018/1/4.
//  Copyright © 2018年 Joeyoung. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

#define kSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"首页";
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.bounds = CGRectMake(0, 0, 150, 50);
    btn.center = CGPointMake(kSCREENWIDTH/2, kSCREENHEIGHT/2);
    btn.backgroundColor = [UIColor purpleColor];
    [btn setTitle:@"React Native" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
- (void)btnClick {
    MainViewController *mainVC = [[MainViewController alloc] init];
    [self.navigationController pushViewController:mainVC animated:YES];
}






@end
