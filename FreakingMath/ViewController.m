//
//  ViewController.m
//  FreakingMath
//
//  Created by nguyenduykhanh on 3/4/16.
//  Copyright © 2016 nguyenduykhanh. All rights reserved.
//

#import "ViewController.h"
#define TIME 2
@interface ViewController ()

@end

@implementation ViewController
{
    BOOL check;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timer.minimumValue = 1;
    self.timer.maximumValue = 10;
    
//    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(runTime) userInfo:nil repeats:YES];
    
    
    
}

//-(void)runTime
//{
//    [UIView animateWithDuration:TIME animations:^{
//        _timerView.frame = CGRectMake(0, 473, 0, 6);
//    }];
//}

-(void)viewWillAppear:(BOOL)animated
{
    int firstnumber = arc4random() % 10;
    self.firstNum.text = [NSString stringWithFormat: @"%d", firstnumber];
    
    int secondnumber = arc4random() % 10;
    self.secondNum.text = [NSString stringWithFormat: @"%d", secondnumber];
    
    int resultnumber = firstnumber + secondnumber;
    self.result.text = [NSString stringWithFormat:@"%d",resultnumber];
    
    int falseresult = resultnumber + arc4random()%3;
    int randomnum = arc4random() % 2;
    if (randomnum == 0) {
        self.result.text = [NSString stringWithFormat:@"%d",falseresult];
        check = FALSE;
    } else {
        self.result.text = [NSString stringWithFormat:@"%d",resultnumber];
        check = TRUE;
    }
}

-(void)calculate
{
    int firstnumber = arc4random() % 10;
    self.firstNum.text = [NSString stringWithFormat: @"%d", firstnumber];
    
    int secondnumber = arc4random() % 10;
    self.secondNum.text = [NSString stringWithFormat: @"%d", secondnumber];
    
    int resultnumber = firstnumber + secondnumber;
    self.result.text = [NSString stringWithFormat:@"%d",resultnumber];
    
    int falseresult = resultnumber + arc4random()%3;
    int randomnum = arc4random() % 2;
    if (randomnum == 0) {
        self.result.text = [NSString stringWithFormat:@"%d",falseresult];
        check = FALSE;
    } else {
        self.result.text = [NSString stringWithFormat:@"%d",resultnumber];
        check = TRUE;
    }
}

-(void)showDieView{
    
    self.dieView.frame = CGRectMake(0, 473, 320, 6);
    [UIView animateWithDuration:1.0 animations:^{
        self.dieView.frame = CGRectMake(35, 140, 250, 180);
    }];
}


- (IBAction)trueResult:(id)sender {
    if (check == TRUE) {
        [self calculate];
    } else {
        [self showDieView];
}
}

- (IBAction)falseResult:(id)sender {
    if (check == FALSE) {
        [self calculate];
    } else {
        [self showDieView];
}
}

- (IBAction)PlayAgain:(id)sender {
    [self calculate];
}


//- (IBAction)getResult:(id)sender {
//    
//    int randomnum = arc4random() % 2;
//    
//    if (randomnum = 0) {
//        self.result.text = self.result
//    }
////    int a = arc4random() % 10;
////    int b = arc4random() % 10;
////    int result = a + b;
////    int falseResult = result + arc4random()%3;
////    int randomnum = arc4random() % 2;
////    if (randomnum == 0) {
////        NSLog(@"%d", falseResult);
////    } else {
////        NSLog(@"%d",result);
////    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
