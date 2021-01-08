//
//  appModel.h
//  ApplicationManagement
//
//  Created by xianshuai Quan on 2021/1/6.
//  Copyright © 2021 xianshuai Quan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface appModel : NSObject
@property(nonatomic,copy)NSString* name;//为啥copy?
@property(nonatomic,copy)NSString* icon;

-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)modelWithDict:(NSDictionary*)dict;

@end

NS_ASSUME_NONNULL_END
