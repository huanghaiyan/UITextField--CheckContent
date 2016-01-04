//
//  ViewController.m
//  UITextField- CheckContent
//
//  Created by huanghy on 16/1/4.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textField.delegate = self;
    _textField.secureTextEntry = YES;
    
    [_loginBtn addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)denglu
{
    NSLog(@"登录");
}

#pragma mark - textField delegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField == _textField) {
        if (range.location > 0 || string.length > 0) {
            _loginBtn.backgroundColor = [UIColor yellowColor];
            _loginBtn.enabled = YES;
        }else{
            _loginBtn.backgroundColor = [UIColor blueColor];
            _loginBtn.enabled = NO;
        }
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
