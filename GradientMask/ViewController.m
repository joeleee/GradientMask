//
//  ViewController.m
//  GradientMask
//
//  Created by Joe Lee on 2016-2-20.
//  Copyright © 2016年 joe.lee. All rights reserved.
//

#import "ViewController.h"

#import "FLEX.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor redColor];
}

// FLEX for debug
- (void)motionEnded:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event
{
  [super motionEnded:motion withEvent:event];

  if (UIEventSubtypeMotionShake == motion || UIEventSubtypeMotionShake == event.subtype) {
    if ([FLEXManager sharedManager].isHidden) {
      [[FLEXManager sharedManager] showExplorer];
    } else {
      [[FLEXManager sharedManager] hideExplorer];
    }
  }
}

@end