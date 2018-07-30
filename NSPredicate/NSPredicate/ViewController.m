//
//  ViewController.m
//  NSPredicate
//
//  Created by fairytale on 2018/7/19.
//  Copyright © 2018年 JLY. All rights reserved.
//

#import "ViewController.h"
#import "PersonModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PersonModel *personModel = [PersonModel new];
    personModel.name = @"李强";
    personModel.area = @"通州区";
    
    NSArray *array = @[personModel];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS '李强'"];
    NSArray *newArray = [array filteredArrayUsingPredicate:predicate];
    NSLog(@"%@", newArray);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
