//
//  ViewController.m
//  Transform
//
//  Created by xianshuai Quan on 2021/1/1.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
- (IBAction)btnMove:(id)sender;
- (IBAction)btnRotate:(id)sender;
- (IBAction)btnScale:(id)sender;
- (IBAction)btnRecover:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btnMove:(id)sender {
 //   self.btnIcon.transform =CGAffineTransformMakeTranslation(0,50);
    [UIView animateWithDuration:2.5 animations:^{
        self.btnIcon.transform=CGAffineTransformTranslate(self.btnIcon.transform, 0, 50);
    }];
    
}

- (IBAction)btnRotate:(id)sender {
    //self.btnIcon.transform=CGAffineTransformMakeRotation(50);
    [UIView animateWithDuration:2.5 animations:^{
        self.btnIcon.transform=CGAffineTransformRotate(self.btnIcon.transform, 50);
    }];
}

- (IBAction)btnScale:(id)sender {
    //self.btnIcon.transform=CGAffineTransformMakeScale(0.5, 0.5);
    [UIView animateWithDuration:2.5 animations:^{
        self.btnIcon.transform=CGAffineTransformScale(self.btnIcon.transform,0.5, 0.5);
    }];
}

- (IBAction)btnRecover:(id)sender {
    self.btnIcon.transform=CGAffineTransformIdentity;
}
@end
