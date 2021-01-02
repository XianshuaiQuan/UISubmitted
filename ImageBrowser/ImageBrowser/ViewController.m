//
//  ViewController.m
//  ImageBrowser
//
//  Created by xianshuai Quan on 2021/1/2.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) NSArray* pic;//加载PicList
@property(nonatomic,assign) int index;//创建索引

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lblNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblDescribe;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property (weak, nonatomic) IBOutlet UIButton *btnPre;

- (IBAction)btnPrePic:(id)sender;
- (IBAction)btnNextPic:(id)sender;

@end



@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setData];
}

//重写get方法
-(NSArray*)pic{
    if(_pic==nil)
    {
        //获取PicList路径
        NSString * path=[[NSBundle mainBundle] pathForResource:@"PicList.plist" ofType:nil];
        NSArray* array=[NSArray arrayWithContentsOfFile:path];
        _pic=array;
        
    }
    return _pic;
}

- (IBAction)btnPrePic:(id)sender {
    self.index--;
    [self setData];
}

- (IBAction)btnNextPic:(id)sender {
    self.index++;
    [self setData];
}


-(void)setData{
    NSDictionary * dict=self.pic[self.index];
    self.lblNumber.text=[NSString stringWithFormat:@"%d/%ld",self.index+1,self.pic.count];
    self.imageView.image=[UIImage imageNamed:dict[@"icon"] ];
    self.lblDescribe.text=dict[@"title"];
     self.btnPre.enabled=(self.index != 0);
    self.btnNext.enabled=(self.index!=(self.pic.count-1));
}
    @end
