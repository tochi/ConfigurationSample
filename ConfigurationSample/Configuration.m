//
//  Configuration.m
//  ConfigurationSample
//
//  Created by tochi on 2012/08/08.
//  Copyright (c) 2012年 tochi. All rights reserved.
//

#import "Configuration.h"

@implementation Configuration
#pragma mark - Name
static NSString *CONFIGURATION_NAME = @"Configuration.Name";
+ (NSString *)name
{
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  [userDefaults registerDefaults:@{CONFIGURATION_NAME : @"No Name"}];
  return [userDefaults objectForKey:CONFIGURATION_NAME];
}

+ (void)setName:(NSString *)value
{
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  [userDefaults setObject:value forKey:CONFIGURATION_NAME];
}

#pragma mark - Setting
static NSString *CONFIGURATION_SETTING = @"Configuration.Setting";
+ (BOOL)setting
{
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  [userDefaults registerDefaults:@{CONFIGURATION_SETTING : @(YES)}];
  return [userDefaults boolForKey:CONFIGURATION_SETTING];
}

+ (void)setSetting:(BOOL)value
{
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  [userDefaults setBool:value forKey:CONFIGURATION_SETTING];
}

#pragma mark - Synchronize
+ (void)synchronize
{
  [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
