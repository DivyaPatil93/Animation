//
//  ViewController.h
//  DPAnimation
//
//  Created by Divya on 08/10/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;

- (IBAction)actionDirection:(id)sender;

- (IBAction)zoomIn:(id)sender;

- (IBAction)zoomOut:(id)sender;


@end

