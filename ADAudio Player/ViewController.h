//
//  ViewController.h
//  ADAudio Player
//
//  Created by Student P_02 on 08/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>
{
    AVAudioPlayer * audioPlayer;
    
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UIButton *playButton;

@property (weak, nonatomic) IBOutlet UILabel *progressLabel;

- (IBAction)playPauseButton:(id)sender;



@end

