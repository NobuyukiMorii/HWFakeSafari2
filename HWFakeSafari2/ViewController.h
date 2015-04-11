//
//  ViewController.h
//  HWFakeSafari2
//
//  Created by 森井宣至 on 2015/04/11.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)tapByn:(id)sender;

@end

