//
//  ViewController.m
//  ApplicationManagement
//
//  Created by xianshuai Quan on 2021/1/5.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "ViewController.h"
#import "appModel.h"
#import "AppView.h"
@interface ViewController ()
@property(nonatomic,strong) NSArray* apps;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //每一行放几个
    int colNum=3;
    //当前p控制器的宽度
    CGFloat viewWidth=self.view.frame.size.width;
    
    //长宽固定
    CGFloat appW=75;
    CGFloat appH=90;
    
    //第一个边距
    CGFloat marginTop=40;
    CGFloat marginX=(viewWidth-colNum*appW)/(colNum+1);
    
    for(int i=0;i<self.apps.count;i++)
    {
        //现获取图片所有数据
        appModel* model=self.apps[i];
        
        //1、创建每个app的UIView
      //  UIView* appView=[[UIView alloc]init];//手动代码方式
        
        //通过xib创建view
        NSBundle* rootBundle=[NSBundle mainBundle];
        AppView*appView=[[rootBundle loadNibNamed:@"appView"  owner:nil options:nil] firstObject];
        
       //设置坐标
        //行列的index
        int rowIndex=i/colNum;
        int colIndex=i%colNum;
        CGFloat appX=marginX+colIndex*(appW+marginX);
        CGFloat appY=marginTop+rowIndex*(appH+marginX);
        //设置框架
        appView.frame=CGRectMake(appX, appY, appW, appH);
        
        //3、将appView加载到k控制器管理到View
        [self.view addSubview:appView];
        
        
        //通过xib创建子控件
        //appView.appImageView.image=[UIImage imageNamed:model.icon];
        //appView.appLbl.text=model.name;
        
        //封装后
        appView.model=model;
        
        /*   通过手动代码方式加载子控件
        //增加子控件
        //1、增加图片框
        UIImageView* imageIcon=[[UIImageView alloc]init];
    //    imageIcon.backgroundColor=[UIColor yellowColor];
        CGFloat imageIconW=45;
        CGFloat imageIconH=45;
        CGFloat imageIconX=(appView.frame.size.width-imageIconW)*0.5;
        CGFloat imageIconY=0;
        imageIcon.frame=CGRectMake(imageIconX, imageIconY, imageIconW, imageIconH);
        [appView addSubview:imageIcon];
        //j加载图片
        
        imageIcon.image= [UIImage imageNamed:model.icon];
        
        //2、增加标签
        UILabel*lblName=[[UILabel alloc]init];
       // lblName.backgroundColor=[UIColor greenColor];
        CGFloat lblW=appView.frame.size.width;
        CGFloat lblH=20;
        CGFloat lblX=0;
        CGFloat lblY=imageIconH;
        lblName.frame=CGRectMake(lblX, lblY, lblW, lblH);
        [appView addSubview:lblName];
        //加载标签
        lblName.text=model.name;
        lblName.font=[UIFont systemFontOfSize:12];
        lblName.textAlignment=NSTextAlignmentCenter;
        
        //3、增加按钮
        UIButton*btn=[[UIButton alloc]init];
      //  btn.backgroundColor=[UIColor redColor];
        CGFloat btnW=imageIconW;
        CGFloat btnH=20;
        CGFloat btnX=imageIconX;
        CGFloat btnY=lblY+lblH;
        btn.frame=CGRectMake(btnX, btnY, btnW, btnH);
        [appView addSubview:btn];
        
        //设置按钮数据
        [btn setTitle:@"下载" forState:UIControlStateNormal];
        [btn setTitle:@"已安装" forState:UIControlStateDisabled];
        
        //设置按钮背景图
        [btn setBackgroundImage:[UIImage imageNamed:@"btnIcon"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"btnIcon_H"] forState:UIControlStateHighlighted];
        
        //设置按钮文字大小
        btn.titleLabel.font=[UIFont systemFontOfSize:12];
        
        //为按钮注册单击时间
        [btn addTarget:self  action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    */
    }
    
}

-(void)btnClick
{
    
}

- (NSArray *)apps
{
    if(_apps==nil)
    {
        NSString* path=[[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        NSArray*arrayDict=[NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray* arrayM=[NSMutableArray array];
        
        for (NSDictionary*dict in arrayDict) {
            appModel* model=[[appModel alloc]initWithDict:dict];
            [arrayM addObject:model];
        }
        _apps=arrayM;
    }
    return _apps;
}


@end
