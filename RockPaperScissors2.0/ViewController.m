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
    
    choices = @[@"Rock", @"Paper", @"Scissors"];
    count = 4;
    
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
    
    NSLog(@"Mobiquity is great");
}


- (IBAction)rockButtonPressed:(id)sender {
    playerHandLabel.text = @"Rock";
    [self winner];
}

- (IBAction)paperButtonPressed:(id)sender {
    playerHandLabel.text = @"Paper";
    [self winner];
}

- (IBAction)scissorsButtonPressed:(id)sender {
    playerHandLabel.text = @"Scissors";
    [self winner];
}

- (IBAction)startButtonPressed:(id)sender {
    //1. clear all labels
    playerHandLabel.text = @"Player's results";
    playerHandLabel.layer.backgroundColor = [[UIColor blackColor]CGColor];
    playerHandLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    
    computerHandLabel.text = @"CPU's results";
    computerHandLabel.layer.backgroundColor = [[UIColor blackColor]CGColor];
    computerHandLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    
    //2. countDownLabel displays countdown clock
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(countdownClock) userInfo:nil repeats:YES];
}

- (void)countdownClock
{
    count--;
    [self updateCountDisplay];
    //3. after countDownLabel = 0, computerHandLabel shows PC's choice and playerHandLabel displays player's choice
    if (count == 0) {
        [timer invalidate];
        //4. if player does not pick something before countdown clock reaches 0 then playerHandLabel displays "too slow"
        if (count == 0 && [playerHandLabel.text isEqualToString:@"Player's results"]) {
            playerHandLabel.text = @"Too Slow";
        }
        count = 4;
        computerHandLabel.text = [choices objectAtIndex:arc4random() % 3];
        [self winner];
        //NSLog(@"playerHandLabel value = %@", playerHandLabel.text);
    }
}

-(void)updateCountDisplay
{
    countDownLabel.text = [NSString stringWithFormat:@"%i", count];
}

- (void)winner
{
    //5. Have the background and border of winner change
    if ([computerHandLabel.text isEqualToString:@"Rock"] && [playerHandLabel.text isEqualToString:@"Scissors"]) {
        computerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        computerHandLabel.layer.borderWidth = 2.0f;
        computerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    } else if ([computerHandLabel.text isEqualToString:@"Paper"] && [playerHandLabel.text isEqualToString:@"Rock"]){
        computerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        computerHandLabel.layer.borderWidth = 2.0f;
        computerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    } else if ([computerHandLabel.text isEqualToString:@"Scissors"] && [playerHandLabel.text isEqualToString:@"Paper"]){
        computerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        computerHandLabel.layer.borderWidth = 2.0f;
        computerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    } else if ([playerHandLabel.text isEqualToString:@"Rock"] && [computerHandLabel.text isEqualToString:@"Scissors"]) {
        playerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        playerHandLabel.layer.borderWidth = 2.0f;
        playerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    } else if ([playerHandLabel.text isEqualToString:@"Paper"] && [computerHandLabel.text isEqualToString:@"Rock"]){
        playerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        playerHandLabel.layer.borderWidth = 2.0f;
        playerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    } else if ([playerHandLabel.text isEqualToString:@"Scissors"] && [computerHandLabel.text isEqualToString:@"Paper"]){
        playerHandLabel.layer.borderColor = [[UIColor cyanColor]CGColor];
        playerHandLabel.layer.borderWidth = 2.0f;
        playerHandLabel.layer.backgroundColor = [[UIColor blueColor]CGColor];
    }

}

@end
