//
//  ViewController.m
//  AudioPlayer
//
//  Created by ju on 2017/3/16.
//  Copyright © 2017年 hu. All rights reserved.
//

#import "ViewController.h"
#import "AudioPlayerManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[AudioPlayerManager sharedInstance] play:@"autoconnect" type:@"mp3"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [[AudioPlayerManager sharedInstance] stop];
}
@end
