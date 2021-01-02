//
//  ViewController.m
//  QQView
//
//  Created by xianshuai Quan on 2021/1/1.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtQQ;
@property (weak, nonatomic) IBOutlet UITextField *txtPassWord;
@property (weak, nonatomic) IBOutlet UITextField *txtShow;
- (IBAction)btnLogin:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btnLogin:(id)sender {
    NSString* res=[NSString stringWithFormat:@"QQ号为：%@。密码为：%@",self.txtQQ.text,self.txtPassWord.text ];
    self.txtShow.text=res;
    [self.view endEditing:YES];
}
@end
