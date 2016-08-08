//
//  ViewController.m
//  ADAudio Player
//
//  Created by Student P_02 on 08/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL * url=[[NSBundle mainBundle]URLForResource:@"Arijit Singh"withExtension:@"mp3"];
    
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    
    audioPlayer.delegate=self;
    
    
}

-(void)updateTime:(NSTimer *)timer
{
    self.progressLabel.text=[NSString stringWithFormat:@"%f",audioPlayer.currentTime];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playPauseButton:(id)sender
{
    UIButton * button=sender;
    
    if (audioPlayer.playing)
    {
        [audioPlayer pause];
        
        [button setBackgroundImage:[UIImage imageNamed:@"audio_play_high.png"] forState:UIControlStateNormal];
    }
    else
    {
        timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime:) userInfo:nil repeats:YES];

        
        [button setBackgroundImage:[UIImage imageNamed:@"audio_pause_high.png"] forState:UIControlStateNormal];
        [audioPlayer play];
    }
}

@end
