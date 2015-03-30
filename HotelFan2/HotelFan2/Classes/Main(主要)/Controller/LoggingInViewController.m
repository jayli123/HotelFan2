//
//  LoggingInViewController.m
//  HotelFan2
//
//  Created by SamLee on 15/3/30.
//  Copyright (c) 2015年 com.jay. All rights reserved.
//

#import "LoggingInViewController.h"
#import "TabBarViewController.h"

@interface LoggingInViewController ()<UITextFieldDelegate,UIWebViewDelegate,UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *AccountFiled;
@property (weak, nonatomic) IBOutlet UITextField *passwordFiled;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollV;
@property (assign, nonatomic)BOOL fillName;
@property (assign, nonatomic)BOOL fillPwd;

@end

@implementation LoggingInViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.AccountFiled.returnKeyType = UIReturnKeyNext;
    self.passwordFiled.returnKeyType = UIReturnKeyDone;
    
    self.scrollV.contentSize = CGSizeMake(30, 468);
    self.scrollV.contentOffset = CGPointMake(0.f, -64.f);
    self.scrollV.contentInset = UIEdgeInsetsMake(64.f, 0.f, 44.f, 0.f);
    self.scrollV.scrollEnabled = NO;
    //监听键盘的点击
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    UITapGestureRecognizer *tabGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handlerTabGesture:)];
        tabGestureRecognizer.delegate = self;
        [self.view addGestureRecognizer:tabGestureRecognizer];

}

- (void)handlerTabGesture:(UITapGestureRecognizer *)recognizer
{
    [self.view endEditing:YES];

}
- (void)keyboardWillShow:(NSNotification *)not
{
    self.scrollV.scrollEnabled = YES;
}

- (void)keyboardWillHide:(NSNotification *)not
{
    
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    //状态栏的样式
    return UIStatusBarStyleLightContent;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
 
    if (textField==self.AccountFiled) {
        
        [self.passwordFiled becomeFirstResponder];
        
    }else{
        [self forLog];
    }
    return YES;
}

- (IBAction)forExperienceLog
{
    DEBUGLOG(@"--forExperienceLog");
}

- (IBAction)forLog
{
    if (self.AccountFiled.text) {
        self.fillName = YES;
    }else if(self.passwordFiled.text){
        
        self.fillPwd = YES;
        
    }
    
    
    if (_fillPwd==NO&&_fillName==YES) {
        
        DEBUGLOG(@"请输入mima");
        
    }else if (_fillPwd==YES&&_fillName==NO) {
        
        DEBUGLOG(@"请输入name");
        
    }else{
        [[UIApplication sharedApplication].keyWindow setRootViewController:[[TabBarViewController alloc]init]];

    }

    
    
}

- (IBAction)forForget
{
    DEBUGLOG(@"--forForget");

    
}
- (IBAction)forReg
{
    DEBUGLOG(@"--forReg");

    
}


#pragma mark - webViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    
}

#pragma mark - gestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    return YES;
}

@end
