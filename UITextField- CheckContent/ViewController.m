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
@property (weak, nonatomic) IBOutlet UIButton *dengluBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textField.delegate = self;
    _textField.secureTextEntry = YES;
    
    [_dengluBtn addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    
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
            _dengluBtn.backgroundColor = [UIColor yellowColor];
            _dengluBtn.enabled = YES;
        }else{
            _dengluBtn.backgroundColor = [UIColor blueColor];
            _dengluBtn.enabled = NO;
        }
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
