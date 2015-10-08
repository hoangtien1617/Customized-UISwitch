//
//  ViewController.m
//  CustomUISliderOnOff
//
//  Created by Hoàng Tiến on 10/8/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "ViewController.h"
#import "CustomUISwitch.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CustomUISwitch *mySwitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mySwitch = [[CustomUISwitch alloc]initWithFrame:CGRectMake(0, 0, 198, 75)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width * 0.5, 120)   ;
    [self.view addSubview:mySwitch];
    [mySwitch addTarget:self
                 action:@selector(switchChange:)
       forControlEvents:UIControlEventValueChanged];
    

}

-(void) switchChange: (CustomUISwitch*) customSwitch {
    NSLog(@"%d",customSwitch.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
