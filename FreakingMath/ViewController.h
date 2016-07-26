//
//  ViewController.h
//  FreakingMath
//
//  Created by nguyenduykhanh on 3/4/16.
//  Copyright © 2016 nguyenduykhanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
}


@property (weak, nonatomic) IBOutlet UILabel *firstNum;
@property (weak, nonatomic) IBOutlet UILabel *secondNum;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UILabel *score;

//
@property (weak, nonatomic) IBOutlet UISlider *timer;

//
@property (weak, nonatomic) IBOutlet UIButton *TrueButton;
@property (weak, nonatomic) IBOutlet UIButton *FalseButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@property (weak, nonatomic) IBOutlet UIView *timerView;
@property (weak, nonatomic) IBOutlet UIView *dieView;

@property (weak, nonatomic) IBOutlet UIButton *PlayAgainButton;

@end

