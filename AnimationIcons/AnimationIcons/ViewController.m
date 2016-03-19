//
//  ViewController.m
//  AnimationIcons
//
//  Created by YB on 16/1/23.
//  Copyright © 2016年 YB. All rights reserved.
//

#import "ViewController.h"
#import "Btn2.h"
#import "Btn1.h"
@interface ViewController ()
{
    Btn2* b2;
    Btn1 * b1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     b1 = [[Btn1 alloc]initWithFrame:CGRectMake(100, 100, 30, 50)];
    b1.backgroundColor = [UIColor redColor];
    [self.view addSubview:b1];
    [b1 addTarget:self action:@selector(w) forControlEvents:UIControlEventTouchUpInside];

    b2 = [[Btn2 alloc]initWithFrame:CGRectMake(200, 100, 30, 50)];
    b2.backgroundColor = [UIColor redColor];
    [self.view addSubview:b1];
    [self.view addSubview:b2];
    [b2 addTarget:self action:@selector(w) forControlEvents:UIControlEventTouchUpInside];
    [b1 addTarget:self action:@selector(w) forControlEvents:UIControlEventTouchUpInside];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    b1.status = 0;
    b2.status = 0;
}
- (void)w {
    b1.status = 1;
    b2.status = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
