//
//  ViewController.m
//  NSLocale
//
//  Created by fairytale on 2018/7/2.
//  Copyright © 2018年 JLY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self logLocaleDate];
}

int Sum(int n)
{
    int ret = 0;
    n == 0 || (ret = Sum(n-1));
    return n + ret;
}

//日期的本地化
- (void)logLocaleDate{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    dateFormatter.timeStyle = kCFDateFormatterShortStyle;
//    dateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    
    NSDate *todayDate = [NSDate dateWithTimeIntervalSince1970:1525104000];
//    [dateFormatter setLocalizedDateFormatFromTemplate:@"yyyyMMddHHmmss"];
//    NSLog(@"Before set locale: %@", [dateFormatter stringFromDate:todayDate]);
    
//    [dateFormatter setLocale:[NSLocale localeWithLocaleIdentifier:@"zh_Hans"]];

//    NSLocale *frLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"fr_FR"];
//    NSLog(@"fr_FR: %@", [frLocale displayNameForKey:NSLocaleIdentifier value:@"fr_FR"]);
//    NSLog(@"en_US: %@", [frLocale displayNameForKey:NSLocaleIdentifier value:@"en_US"]);
    
//    for (NSString *localeIdentifier in [NSLocale availableLocaleIdentifiers]) {
//        NSLog(@"%@", localeIdentifier);
//    }
    
    [dateFormatter setLocalizedDateFormatFromTemplate:@"yyyy年MM月dd日HHmmss"];
    
    NSLog(@"After set locale: %@", [dateFormatter stringFromDate:todayDate]);

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
