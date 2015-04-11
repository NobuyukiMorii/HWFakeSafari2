//
//  ViewController.m
//  HWFakeSafari2
//
//  Created by 森井宣至 on 2015/04/11.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //UserDefaultから取り出す
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *memoStr = [defaults stringForKey:@"saveURL"];
    self.myTextField.text = memoStr;
    //WEBの画面を表示する
    NSURL *myURL = [NSURL URLWithString:memoStr];
    NSURLRequest *myURLReq = [NSURLRequest requestWithURL:myURL];
    [self.myWebView loadRequest:myURLReq];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapByn:(id)sender {
    //WEBの画面を表示する
    NSURL *myURL = [NSURL URLWithString:self.myTextField.text];
    NSURLRequest *myURLReq = [NSURLRequest requestWithURL:myURL];
    [self.myWebView loadRequest:myURLReq];
    //UserDefaultに保存する
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.myTextField.text forKey:@"saveURL"];
    [defaults synchronize];
}

- (IBAction)textFieldReturn:(id)sender {
    [textField resignFirstResponder];
}

@end
