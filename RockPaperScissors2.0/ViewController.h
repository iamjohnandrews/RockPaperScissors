//
//  ViewController.h
//  RockPaperScissors2.0
//
//  Created by John Andrews on 11/12/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;
@property (weak, nonatomic) IBOutlet UILabel *computerHandLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerHandLabel;

@property (weak, nonatomic) IBOutlet UIButton *rockButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *paperButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *scissorsButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *startButtonOutlet;

- (IBAction)rockButtonPressed:(id)sender;
- (IBAction)paperButtonPressed:(id)sender;
- (IBAction)scissorsButtonPressed:(id)sender;
- (IBAction)startButtonPressed:(id)sender;

@end
