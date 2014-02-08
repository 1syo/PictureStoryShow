//
//  ViewController.m
//  PictureStoryShow
//
//  Created by TAKAHASHI Kazunari on 2014/02/05.
//  Copyright (c) 2014年 TAKAHASHI Kazunari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.text = [NSString stringWithFormat:@"%d", 1];
    self.imageView.image = [UIImage imageNamed:@"1.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButton:(id)sender {
    NSArray *images =[NSArray arrayWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", nil];
    int num = [self.label.text intValue];
    int next = 0;
    
    if(num > 0 && num < 4){
        next = num + 1;
    }else if(num >= 4){
        next = 4;
    }else{
        next = num;
    }

    self.label.text = [NSString stringWithFormat:@"%d", next];
    self.slider.value = next;
    self.imageView.image = [UIImage imageNamed:[images objectAtIndex:(next - 1)]];
}

- (IBAction)prevButton:(id)sender {
    NSArray *images =[NSArray arrayWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", nil];
    int num = [self.label.text intValue];
    int prev = 0;
    
    if(num <= 1){
        prev = 1;
    }else{
        prev = num - 1;
    }

    self.label.text = [NSString stringWithFormat:@"%d", prev];
    self.slider.value = prev;
    self.imageView.image = [UIImage imageNamed:[images objectAtIndex:(prev - 1)]];
}
@end
