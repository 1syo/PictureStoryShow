//
//  ViewController.h
//  PictureStoryShow
//
//  Created by TAKAHASHI Kazunari on 2014/02/05.
//  Copyright (c) 2014年 TAKAHASHI Kazunari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)nextButton:(id)sender;
- (IBAction)prevButton:(id)sender;

@end
