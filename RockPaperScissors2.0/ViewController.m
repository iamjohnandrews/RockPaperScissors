//
//  ViewController.m
//  RockPaperScissors2.0
//
//  Created by John Andrews on 11/12/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize rockButtonOutlet, paperButtonOutlet, scissorsButtonOutlet,startButtonOutlet, countDownLabel, playerHandLabel, computerHandLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //creating round buttons
    rockButtonOutlet.layer.borderWidth = 1.0;
    rockButtonOutlet.layer.cornerRadius = 5.0;
    rockButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    paperButtonOutlet.layer.borderWidth = 1.0;
    paperButtonOutlet.layer.cornerRadius = 5.0;
    paperButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    scissorsButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    scissorsButtonOutlet.layer.cornerRadius = 5.0;
    scissorsButtonOutlet.layer.borderWidth = 1.0;
    
    startButtonOutlet.layer.cornerRadius = 5.0;
    startButtonOutlet.layer.borderWidth = 1.0;
    startButtonOutlet.layer.borderColor = [[UIColor greenColor]CGColor];
}


- (IBAction)rockButtonPressed:(id)sender {
}

- (IBAction)paperButtonPressed:(id)sender {
}

- (IBAction)scissorsButtonPressed:(id)sender {
}

- (IBAction)startButtonPressed:(id)sender {
}
@end
