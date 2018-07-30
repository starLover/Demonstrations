//
//  ViewController.m
//  Shadow
//
//  Created by fairytale on 2018/7/6.
//  Copyright © 2018年 JLY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     和图层边框不同，图层的阴影继承自内容的外形，而不是根据边界和角半径来确定。为了计算出阴影的形状，Core Animation会将寄宿图（包括子视图，如果有的话）考虑在内，然后通过这些来完美搭配图层形状从而创建一个阴影
     */
    self.imageView.layer.shadowRadius = 5;
    self.imageView.layer.shadowOffset = CGSizeMake(0, 10);
    self.imageView.layer.shadowOpacity = 0.5;
//    self.imageView.backgroundColor = [UIColor whiteColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
