//
//  TRoadViewController.m
//  自定义字体
//
//  Created by laznrbfe on 14-11-10.
//  Copyright (c) 2014年 iOS_Android. All rights reserved.
//

#import "TRoadViewController.h"

@interface TRoadViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UILabel *FSAlbert_Bold_Label;

@end

@implementation TRoadViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"¥3496起"];
    
    NSRange rang1=[@"¥3496起" rangeOfString:@"¥"];
    NSRange rang2=[@"¥3496起" rangeOfString:@"3496"];
    NSRange rang3=[@"¥3496起" rangeOfString:@"起"];
    
    NSLog(@"rang1={%d,%d}",rang1.location,rang1.length);
    NSLog(@"rang2={%d,%d}",rang2.location,rang2.length);
    NSLog(@"rang3={%d,%d}",rang3.location,rang3.length);
    
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:rang1];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:rang2];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:rang3];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Arial-BoldItalicMT" size:7.0] range:rang1];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"FSAlbert-Bold" size:15.0] range:rang2];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Courier-BoldOblique" size:7.0] range:rang3];
    
    _myLabel.attributedText=str;
    
    
    
    
//    _FSAlbert_Bold_Label.font=[UIFont fontWithName:@"FSAlbert-Bold" size:17.0];
//    _myLabel.font=[UIFont fontWithName:@"FSAlbert" size:17.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
