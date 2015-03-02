//
//  ViewController.m
//  TicTacToeTapFury
//
//  Created by Johann Kerr on 5/22/14.
//  Copyright (c) 2014 Johann Kerr. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *board;
@property (weak, nonatomic) IBOutlet UILabel *turnLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;

//Tiles counted from left to right

@property (weak, nonatomic) IBOutlet UIImageView *tile1;
@property (weak, nonatomic) IBOutlet UIImageView *tile2;
@property (weak, nonatomic) IBOutlet UIImageView *tile3;
@property (weak, nonatomic) IBOutlet UIImageView *tile4;

@property (weak, nonatomic) IBOutlet UIImageView *tile5;
@property (weak, nonatomic) IBOutlet UIImageView *tile6;
@property (weak, nonatomic) IBOutlet UIImageView *tile7;
@property (weak, nonatomic) IBOutlet UIImageView *tile8;
@property (weak, nonatomic) IBOutlet UIImageView *tile9;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // add the images  oImg = [UIImage imageNamed:@"O.png"];
    xImg = [UIImage imageNamed:@"X.png"];
    
    // set the player to 1
    playerToken = 1;
    // update the label
    turnLabel.text =@"X goes first";
   
    

}


- (void) updatePlayerInfo{
    
//    if(playerToken == 1) {
//        playerToken = 2;
//        whoseTurn.text = @"It is O turn";
//        NSLog(@"playerToken = %d", playerToken);
//    }
//    else if(playerToken == 2) {
//        playerToken = 1;
//        whoseTurn.text =@"It is X turn";
//        NSLog(@"playerToken = %d", playerToken);
//    }
//    
//    if ([self checkForWin]) {
//        UIAlertView *someonewon = [[UIAlertView
//                                    alloc]initWithTitle:@"There's a winner!"
//                                   message:@"Someone Won. You have to figure out
//                                   who and how you want to report it. I can't do
//                                   everything for you." delegate:self
//                                   cancelButtonTitle:@"ok" otherButtonTitles: nil]; 
//        [someonewon show]; 
//        [self resetBoard]; 
//}

}

- (IBAction)buttonReset:(UIButton *)sender {
    [self resetBoard];
}

-(void) resetBoard{
    /// clear the images stored in the UIIMageView
    s1.image = NULL;
    s2.image = NULL;
    s3.image = NULL;
    s4.image = NULL;
    s5.image = NULL;
    s6.image = NULL;
    s7.image = NULL;
    s8.image = NULL;
    s9.image = NULL;
    
    // reset the player and update the label text
    playerToken= 1;
    whoseTurn.text = @"X goes first";
}

- (void)touchesBegan:(NSSet *)touches
           withEvent:(UIEvent *)event{
    
    UITouch *touch = [[event allTouches] anyObject];
    
    // check to see which UIImage view was touched
    if(CGRectContainsPoint([s1 frame], [touch
                                        locationInView:self.view])){  if(playerToken==1){ s1.image = xImg; }
        if(playerToken==2){ s1.image = oImg; }
    }
    
    if(CGRectContainsPoint([s2 frame], [touch
                                        locationInView:self.view])){
        if(playerToken==1){ s2.image = xImg; }
        if(playerToken==2){ s2.image = oImg; }
    }
    
    if(CGRectContainsPoint([s3 frame], [touch
                                        locationInView:self.view])){
        if(playerToken==1){ s3.image = xImg; }
        if(playerToken==2){ s3.image = oImg; }
    }
    
    if(CGRectContainsPoint([s4 frame], [touch
                                        locationInView:self.view])){
        if(playerToken==1){ s4.image = xImg; }
        if(playerToken==2){ s4.image = oImg; }
    }
    
    if(CGRectContainsPoint([s5 frame], [touch
                                        locationInView:self.view])){
        if(playerToken==1){ s5.image = xImg; }
        if(playerToken==2){ s5.image = oImg; }
    }
    
    
    if(CGRectContainsPoint([s6 frame], [touch
                                        locationInView:self.view])){  if(playerToken==1){ s6.image = xImg; }
        if(playerToken==2){ s6.image = oImg; }
    }
    
    if(CGRectContainsPoint([s7 frame], [touch
                                        locationInView:self.view])){
        if(playerToken==1){ s7.image = xImg; }
        if(playerToken==2){ s7.image = oImg; } 
    } 
    
    if(CGRectContainsPoint([s8 frame], [touch 
                                        locationInView:self.view])){ 
        if(playerToken==1){ s8.image = xImg; } 
        if(playerToken==2){ s8.image = oImg; } 
    } 
    
    if(CGRectContainsPoint([s9 frame], [touch 
                                        locationInView:self.view])){ 
        if(playerToken==1){ s9.image = xImg; } 
        if(playerToken==2){ s9.image = oImg; } 
    } 
    [self updatePlayerInfo]; 
    
}

-(BOOL) checkForWin {  // HORIZONTAL WINS
    if((s1.image == s2.image) & (s2.image ==
                                 s3.image) & (s1.image != NULL))
    {
        return YES;
    }
    if((s4.image == s5.image) & (s5.image ==
                                 s6.image) & (s4.image != NULL))
    {
        return YES;
    }
    if((s7.image == s8.image) & (s8.image ==
                                 s9.image) & (s7.image != NULL))
    {
        return YES;
    }
    // VERTICAL WINS
    if((s1.image == s4.image) & (s4.image ==
                                 s7.image) & (s1.image != NULL))
    {
        return YES;
    }
    if((s2.image == s5.image) & (s5.image ==
                                 s8.image) & (s2.image != NULL))
    {
        return YES;
    }
    if((s3.image == s6.image) & (s6.image ==
                                 s9.image) & (s3.image != NULL))
    { 
        return YES;  } 
    // DIAGONAL WINS
    if((s1.image == s5.image) & (s5.image == 
                                 s9.image) & (s1.image != NULL)) 
    { 
        return YES; 
    } 
    if((s3.image == s5.image) & (s5.image == 
                                 s7.image) & (s3.image != NULL)) 
    { 
        return YES; 
    } 
    return NO; 
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
