//
//  appModel.m
//  ApplicationManagement
//
//  Created by xianshuai Quan on 2021/1/6.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import "appModel.h"

@implementation appModel

-(instancetype)initWithDict:(NSDictionary *)dict
{
    if(self=[super init])
    {
        self.icon=dict[@"icon"];
        self.name=dict[@"name"];
    }
    return self;
}

+(instancetype)modelWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
@end
