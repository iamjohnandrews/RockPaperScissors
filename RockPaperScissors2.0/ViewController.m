//
//  ViewController.m
//  RockPaperScissors2.0
//
//  Created by John Andrews on 11/12/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *choices;
    NSTimer *timer;
    int count;
}

@end

@implementation ViewController
@synthesize rockButtonOutlet, paperButtonOutlet, scissorsButtonOutlet,startButtonOutlet, countDownLabel, playerHandLabel, computerHandLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //creating round buttons
    rockButtonOutlet.layer.borderWidth = 1.0f;
    rockButtonOutlet.layer.cornerRadius = 5.0f;
    rockButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    paperButtonOutlet.layer.borderWidth = 1.0f;
    paperButtonOutlet.layer.cornerRadius = 5.0f;
    paperButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    scissorsButtonOutlet.layer.borderColor = [[UIColor whiteColor]CGColor];
    scissorsButtonOutlet.layer.cornerRadius = 5.0f;
    scissorsButtonOutlet.layer.borderWidth = 1.0f;
    
    startButtonOutlet.layer.cornerRadius = 5.0f;
    startButtonOutlet.layer.borderWidth = 1.0f;
    startButtonOutlet.layer.borderColor = [[UIColor greenColor]CGColor];
}


- (IBAction)rockButtonPressed:(id)sender {
    playerHandLabel.text = @"Rock";
}

- (IBAction)paperButtonPressed:(id)sender {
    playerHandLabel.text = @"Paper";
}

- (IBAction)scissorsButtonPressed:(id)sender {
    playerHandLabel.text = @"Scissors";
}

- (IBAction)startButtonPressed:(id)sender {
    //1. clear all labels
    playerHandLabel.text = @"Player's results here";
    computerHandLabel.text = @"CPU's results here";
    
    //2. countDownLabel displays countdown clock
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(countdownClock) userInfo:nil repeats:YES];
    
    //3. after countDownLabel = 0, computerHandLabel shows PC's choice and playerHandLabel displays player's choice
    
    //4. if player does not pick something before countdown clock reaches 0 then playerHandLabel displays "too slow"
}

- (void)countdownClock
{
    count--;
    [self updateCountDisplay];
    
    if (count == 0) {
        [timer invalidate];
        count = 4;
        computerHandLabel.text = [choices objectAtIndex:arc4random() % 3];
    }
}

-(void)updateCountDisplay
{
    countDownLabel.text = [NSString stringWithFormat:@"%i", count];
}

@end
