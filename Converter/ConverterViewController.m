//
//  ConverterViewController.m
//  Converter
//
//  Created by Renganathan D on 7/31/13.
//  Copyright (c) 2013 Renganathan D. All rights reserved.
//

#import "ConverterViewController.h"

@interface ConverterViewController ()

- (float) fahrenheit2Celsius: (float) fahreneit;
- (float) celsius2Fahrenheit: (float) celsius;

@end

@implementation ConverterViewController

UITextField *userInputField = nil;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.fahrenheitTextField.delegate = self;
    self.celsiusTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self view] endEditing:YES];
}

#pragma mark - UITextField delegate

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    userInputField = textField;
    return YES;
}

#pragma mark - private methods

- (void) convertButton:(id)sender {

    if(userInputField != nil ) {
        
        if([self.fahrenheitTextField isEqual:userInputField]){
            self.celsiusTextField.text = [ NSString stringWithFormat:@"%.2f", [self fahrenheit2Celsius:[self.fahrenheitTextField.text floatValue]]];
        } else {
            self.fahrenheitTextField.text = [ NSString stringWithFormat:@"%.2f", [self celsius2Fahrenheit:[self.celsiusTextField.text floatValue]]];
        }
    }
}

- (float) fahrenheit2Celsius: (float)fahrenheit {
    float celsius = 0.0;
    
    celsius = (fahrenheit - 32) * 5/9;
    return celsius;

}

- (float) celsius2Fahrenheit: (float)celsius {
    float fahrenheit = 0.0;

    fahrenheit = (celsius * 9/5) + 32;
    return fahrenheit;
}


@end
