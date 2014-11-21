//
//  ViewController.h
//  LocalChat
//
//  Created by Al Zimmerman on 11/20/14.
//  Copyright (c) 2014 Al Zimmerman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIView *textEntryView;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
@property (weak, nonatomic) IBOutlet UITextField *chatText;

@end

