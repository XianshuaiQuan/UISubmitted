//
//  AppView.m
//  ApplicationManagement
//
//  Created by xianshuai Quan on 2021/1/8.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "AppView.h"
#import "appModel.h"

@interface AppView ( )

@property (weak, nonatomic) IBOutlet UIImageView *appImageView;
@property (weak, nonatomic) IBOutlet UILabel *appLbl;
@property (weak, nonatomic) IBOutlet UIButton *appBtn;

@end

@implementation AppView

//重写model的set方法
-(void)setModel:(appModel*)model
{
    _model=model;
    self.appImageView.image=[UIImage imageNamed:model.icon];
    self.appLbl.text=model.name;
}

@end
