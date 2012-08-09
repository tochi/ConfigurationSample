//
//  ViewController.h
//  ConfigurationSample
//
//  Created by tochi on 2012/08/08.
//  Copyright (c) 2012年 tochi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *settingSwitch;
- (IBAction)saveButtonClicked:(id)sender;
@end
