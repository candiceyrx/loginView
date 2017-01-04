//
//  HomeViewController.m
//  login
//
//  Created by Candice on 16/11/30.
//  Copyright © 2016年 刘灵. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 200, 200, 100) ;
    [button setTitle:@"点击进入" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClicked {
    LoginViewController *controller = [[LoginViewController alloc]init];
    [self.navigationController pushViewController:controller animated:YES];
}
@end
