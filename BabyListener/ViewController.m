//
//  ViewController.m
//  BabyListener
//
//  Created by frank on 15/12/13.
//  Copyright (c) 2015年 frank. All rights reserved.
//

#import "ViewController.h"
#import "ListenView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property(nonatomic,strong) NSTimer *rotatingTimer;
@property(nonatomic,strong) ListenView *listView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.rotatingTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(rotate) userInfo:nil repeats:YES];
    
    //创建list视图
    //self.listView = [[ListenView alloc] initWithFrame:CGRectMake(320-206-20, 50, 206, 348)];
    self.listView = [[[NSBundle mainBundle] loadNibNamed:@"ListenView" owner:nil options:nil] firstObject];
    _listView.frame = CGRectMake(320-206-20, 55, 206, 348);
    _listView.alpha = 0;
    [self.view addSubview:_listView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//实现旋转效果
- (void) rotate{
    _coverImageView.transform = CGAffineTransformRotate(_coverImageView.transform, 0.5/180*M_PI);
}
- (IBAction)ListButtonClick:(UIButton *)sender {
    //通过透明度来判断播放列表状态
    if (_listView.alpha == 0) {
        _listView.alpha = 1;
    } else{
        _listView.alpha = 0;
    }
}
@end
