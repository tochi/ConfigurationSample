//
//  ViewController.m
//  ConfigurationSample
//
//  Created by tochi on 2012/08/08.
//  Copyright (c) 2012年 tochi. All rights reserved.
//

#import "ViewController.h"
#import "Configuration.h"

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // Restore the configurations.
  self.nameTextField.text = [Configuration name];
  self.settingSwitch.on = [Configuration setting];
}

- (IBAction)saveButtonClicked:(id)sender
{
  // Save the configurations.
  [Configuration setName:self.nameTextField.text];
  [Configuration setSetting:self.settingSwitch.on];
  [Configuration synchronize];
  
  [self.view endEditing:YES];
}

- (void)viewDidUnload
{
  [self setSettingSwitch:nil];
  [self setNameTextField:nil];
  [super viewDidUnload];
}
@end
