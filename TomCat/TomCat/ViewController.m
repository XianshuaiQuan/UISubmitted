//
//  ViewController.m
//  TomCat
//
//  Created by xianshuai Quan on 2021/1/3.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageViewCat;
- (IBAction)drink:(id)sender;
- (IBAction)cymbal:(id)sender;
- (IBAction)eat:(id)sender;
- (IBAction)fart:(id)sender;
- (IBAction)scratch:(id)sender;
- (IBAction)pie:(id)sender;
- (IBAction)knockout:(id)sender;
-(void)doAction:(int)index withImageName:(NSString*)name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)drink:(id)sender {
    [self doAction:81 withImageName:@"drink"];
}

- (IBAction)cymbal:(id)sender {
    [self doAction:13 withImageName:@"cymbal"];
}

- (IBAction)eat:(id)sender {
    [self doAction: 40 withImageName:@"eat"];
}

- (IBAction)fart:(id)sender {
    [self doAction: 28 withImageName:@"fart"];
}

- (IBAction)scratch:(id)sender {
    [self doAction:56 withImageName:@"scratch"];
}

- (IBAction)pie:(id)sender {
    [self doAction:24 withImageName:@"pie"];
}

- (IBAction)knockout:(id)sender {
    [self doAction:81 withImageName:@"knockout"];
}

-(void)doAction:(int)index withImageName:(NSString *)name
{
    if(self.imageViewCat.isAnimating)
    {
        return;
    }
    NSMutableArray* arrayM=[NSMutableArray array];
    for(int i=0;i<index;i++)
    {
        NSString* imageName=[NSString stringWithFormat:@"%@_%02d.jpg",name,i];
        //会缓存图片消耗内存
      //  UIImage* image= [UIImage imageNamed:imageName];
        NSString* path=[[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        UIImage* image=[UIImage imageWithContentsOfFile:path];
        [arrayM addObject:image];
    }
    self.imageViewCat.animationImages=arrayM;
    self.imageViewCat.animationDuration=self.imageViewCat.animationImages.count*0.1;
    self.imageViewCat.animationRepeatCount=1;
    [self.imageViewCat startAnimating];
    
    //延迟执行
    [self.imageViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.imageViewCat.animationImages.count*0.1];
}
    @end
