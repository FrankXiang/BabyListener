//
//  ViewController.m
//  BabyListener
//
//  Created by frank on 15/12/13.
//  Copyright (c) 2015年 frank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property(nonatomic,strong) NSTimer *rotatingTimer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.rotatingTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(rotate) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//实现旋转效果
- (void) rotate{
    _coverImageView.transform = CGAffineTransformRotate(_coverImageView.transform, 0.5/180*M_PI);
}
@end
