//
//  ViewController.m
//  DPAnimation
//
//  Created by Divya on 08/10/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionDirection:(id)sender {
    
    UIButton *button = sender;
    if (button.tag == 101)
    {
        [self upAnimation];
    }
    else if(button.tag == 107)
    {
        [self animateDownWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 105)
    {
        [self animateRightWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 103)
    {
        [self animateLeftWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 100)
    {
        [self animateNorthWestWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 102)
    {
        [self animateNorthEastWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 106)
    {
        [self animateSouthWestWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 108)
    {
        [self  animateSouthEastWithDuration:0.5 delay:0.1];
    }
}

- (IBAction)zoomIn:(id)sender {
//    [self animateZoomWithScale:25 ];
    [self animateZoomWithSize:25];

    
}

- (IBAction)zoomOut:(id)sender {
    
    [self animateZoomWithSize:-25];
}




-(void)upAnimation {
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^ {
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x , self.ball.frame.origin.y -100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
           } completion:^(BOOL finished) {
        if(finished) {
            NSLog(@"Up Animation finished");
        }
    }];
    
}

-(void)animateLeftWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^ {
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y , self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished) {
            NSLog(@"Left Animation finished");
        }
    }];
    
}

-(void)animateDownWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Down Animation Finished");
        }
    }];
}

-(void)animateRightWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y , self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Right Animation Finished");
        }
    }];
}

-(void)animateNorthWestWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y - 100 , self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"NorthWest Animation Finished");
        }
    }];
}

-(void)animateNorthEastWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y - 100 , self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"NorthEast Animation Finished");
        }
    }];
}

-(void)animateSouthWestWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"SouthWest Animation Finished");
        }
    }];
}

-(void)animateSouthEastWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"SouthEast Animation Finished");
        }
    }];
}

-(void)animateZoomWithScale:(CGFloat)scale
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ball.transform = CGAffineTransformMakeScale(scale, scale);
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Zoom_in animation finished");
        }
    }];
}

-(void)animateZoomWithSize:(CGFloat)size
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width+size, self.ball.frame.size.height + size)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Zoom_out animation finished");
        }
    }];
}


@end
