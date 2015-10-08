//
//  CustomUISwitch.m
//  CustomUISliderOnOff
//
//  Created by Hoàng Tiến on 10/8/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "CustomUISwitch.h"

@implementation CustomUISwitch
{
    UIButton *buttonOn;
    UIButton *buttonOff;
}

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 198, 75)];
    buttonOn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 99, 75)];
    buttonOff = [[UIButton alloc]initWithFrame:CGRectMake(99, 0, 99, 75)];
    [buttonOn addTarget:self
                 action:@selector(pressOn)
       forControlEvents:UIControlEventTouchUpInside];
    [buttonOff addTarget:self
                 action:@selector(pressOff)
       forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:buttonOn];
    [self addSubview:buttonOff];
    self.value = false;
    return self;
    
}
-(void)pressOn {
    self.value = true  ;
    
}
-(void)pressOff{
    self.value = false  ;
    
}
-(BOOL) getValue{
    return _value;
}
-(void) setValue:(BOOL)value {
    _value = value;
    if (_value) {
        [buttonOn setImage:[UIImage imageNamed:@"onBot"] forState:normal  ];
        [buttonOff setImage:[UIImage imageNamed:@"offTop"] forState:normal];

    }else{
        [buttonOn setImage:[UIImage imageNamed:@"onTop"] forState:normal   ];
        [buttonOff setImage:[UIImage imageNamed:@"offBot"] forState:normal];
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
