//
//  ViewController.m
//  LocalChat
//
//  Created by Al Zimmerman on 11/20/14.
//  Copyright (c) 2014 Al Zimmerman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // subscribe to global notifications about when the keyboard shows and hides
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
}

// now the methods to handle the keyboard notifications

-(void)keyboardWasShown:(NSNotification *)notification {
    // animate the textfield to be above the keyboard
}

-(void)keyboardWillHide:(NSNotification *)notification {
    // animate the textfield to be back at the bottom of the screen
}


-(void) hideKeyboard {
    [self.chatText resignFirstResponder]; // hides the keyboard when revealed by focusing on the text field. 'self' is the view conroller
}


-(void)textFieldDidEndEditing:(UITextField *)textField {

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField { // when user clicks RETURN
    [self hideKeyboard]; // call the method above 
    return NO; // don't add the CR to the string, just react to it
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
