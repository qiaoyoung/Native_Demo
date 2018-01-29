//
//  MainViewController.m
//  Native_Demo
//
//  Created by 乔杨 on 2018/1/5.
//  Copyright © 2018年 Joeyoung. All rights reserved.
//

#import "MainViewController.h"
#import <React/RCTRootView.h>

#define kSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二页";
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.bounds = CGRectMake(0, 0, 150, 50);
    btn.center = CGPointMake(kSCREENWIDTH/2, kSCREENHEIGHT/2);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"名单列表" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnClick {
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    RCTRootView *rootView =[[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                       moduleName:@"MyReactNativeApp"
                                                initialProperties: @{
                                                                       @"scores" : @[
                                                                               @{
                                                                                   @"name" : @"Joeyoung",
                                                                                   @"value": @"man"
                                                                                   },
                                                                               @{
                                                                                   @"name" : @"Jack",
                                                                                   @"value": @"man"
                                                                                   }
                                                                               ]
                                                                       }
                                                    launchOptions:nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}



 
@end
