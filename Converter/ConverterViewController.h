//
//  ConverterViewController.h
//  Converter
//
//  Created by Renganathan D on 7/31/13.
//  Copyright (c) 2013 Renganathan D. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConverterViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, weak) IBOutlet UITextField *celsiusTextField;


- (IBAction)convertButton:(id)sender;


@end
