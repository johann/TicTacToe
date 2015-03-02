//
//  ViewController.h
//  TicTacToeTapFury
//
//  Created by Johann Kerr on 5/22/14.
//  Copyright (c) 2014 Johann Kerr. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    // the X or O images
    IBOutlet UIImage * oImg;
    IBOutlet UIImage * xImg;
    
    NSInteger playerToken;
}


- (IBAction)buttonReset:(UIButton *)sender;

-(void) updatePlayerInfo;
-(void) resetBoard;
-(BOOL) checkForWin;


@end




