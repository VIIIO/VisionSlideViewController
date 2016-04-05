//
//  ViewController.m
//  VisionSlideViewController
//
//  Created by Vision on 16/4/5.
//  Copyright © 2016年 VIIIO. All rights reserved.
//

#import "ViewController.h"
#import "VisionSlideViewControllerDemo.h"

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

- (IBAction)showController:(id)sender {
    [self.navigationController pushViewController:[[VisionSlideViewControllerDemo alloc] init] animated:YES];
}
@end
