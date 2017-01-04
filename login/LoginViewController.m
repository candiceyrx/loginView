//
//  LoginViewController.m
//  login
//
//  Created by Candice on 16/11/30.
//  Copyright © 2016年 刘灵. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController()

@property (nonatomic, strong) UIView *registerView;
@property (nonatomic, strong) UIView *loginView;
@property (nonatomic, strong) UIView *titleView;

@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *rightLabel;
@property (nonatomic, strong) UIView *leftView;
@property (nonatomic, strong) UIView *rightView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [self hexToColor:@"#384C67"];
    self.navigationItem.titleView = self.titleView;
    
    [self.view addSubview:self.registerView];
}

- (UIView *)titleView {
    if (!_titleView) {
        _titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 120, 44)];
        
        UIView *left = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];
        [_titleView addSubview:left];
        UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(registerButtonClicked)];
        [left addGestureRecognizer:tapRecognizer];
        
        _leftLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
        _leftLabel.textColor = [UIColor whiteColor];
        _leftLabel.font = [UIFont systemFontOfSize:18];
        _leftLabel.text = @"注册";
        [left addSubview:_leftLabel];
        
        _leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 42, 42, 1)];
        _leftView.backgroundColor = [UIColor whiteColor];
        [left addSubview:_leftView];
        

        UIView *right = [[UIView alloc]initWithFrame:CGRectMake(70, 0, 50, 44)];
        [_titleView addSubview:right];
        UITapGestureRecognizer *rightTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(loginButtonClicked)];
        [right addGestureRecognizer:rightTap];
        
        _rightLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
        _rightLabel.text = @"登录";
        _rightLabel.textColor = [UIColor grayColor];
        _rightLabel.font = [UIFont systemFontOfSize:18];
        [right addSubview:_rightLabel];
        
        _rightView = [[UIView alloc]initWithFrame:CGRectMake(0, 42, 42, 1)];
        _rightView.backgroundColor = [UIColor whiteColor];
        [right addSubview:_rightView];
        _rightView.hidden = YES;
    }
    return _titleView;
}


- (UIView *)registerView {
    if (!_registerView) {
        _registerView = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height)];
        _registerView.backgroundColor = [UIColor redColor];
    }
    return _registerView;
}

- (UIView *)loginView {
    if (!_loginView) {
        _loginView = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height)];
        _loginView.backgroundColor = [UIColor greenColor];
    }
    return _loginView;
}

- (void)registerButtonClicked {
    self.leftView.hidden = NO;
    self.leftLabel.textColor = [UIColor whiteColor];
    
    self.rightLabel.textColor = [UIColor grayColor];
    self.rightView.hidden = YES;
    
     [self.view addSubview:self.registerView];
}

- (void)loginButtonClicked {
    self.rightView.hidden = NO;
    self.rightLabel.textColor = [UIColor whiteColor];
    
    self.leftLabel.textColor = [UIColor grayColor];
    self.leftView.hidden = YES;
    
    [self.view addSubview:self.loginView];
}

- (UIColor *)hexToColor:(NSString *)hexColor
{
    unsigned int red,green,blue;
    NSRange range;
    range.length=2;
    range.location=1;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    range.location=3;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    range.location=5;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];
    return [UIColor colorWithRed:(red/255.0f) green:(green/255.0f) blue:(blue/255.0f) alpha:1.0f];
}
@end
