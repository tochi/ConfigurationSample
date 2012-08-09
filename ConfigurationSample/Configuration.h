//
//  Configuration.h
//  ConfigurationSample
//
//  Created by tochi on 2012/08/08.
//  Copyright (c) 2012年 tochi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Configuration : NSObject
#pragma mark - Name
+ (NSString *)name;
+ (void)setName:(NSString *)value;
#pragma mark - Setting
+ (BOOL)setting;
+ (void)setSetting:(BOOL)value;
#pragma mark - Synchronize
+ (void)synchronize;
@end
