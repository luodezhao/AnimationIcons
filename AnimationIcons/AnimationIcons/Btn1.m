//
//  Btn1.m
//  AnimationIcons
//
//  Created by YB on 16/1/23.
//  Copyright © 2016年 YB. All rights reserved.
//

#import "Btn1.h"
@implementation Btn1

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat  width = MIN(frame.size.height, frame.size.width);
                UIBezierPath *aPath  = [UIBezierPath bezierPath];
        aPath.lineWidth = 2.0;
        aPath.lineCapStyle = kCGLineCapRound;
        aPath.lineJoinStyle = kCGLineCapRound;
        CGPoint center = CGPointMake(frame.size.width/2,frame.size.height/2);
        [aPath moveToPoint:CGPointMake(center.x - width * 0.35, center.y - width * 0.35)];
        [aPath addLineToPoint:CGPointMake(center.x + width * 0.35,center.y +  width * 0.35)];
        [aPath moveToPoint:CGPointMake(center.x - width * 0.35, center.y +  width * 0.35)];
        [aPath addLineToPoint:CGPointMake(center.x + width* 0.35, center.y - width * 0.35)];
       myLayer= [[CAShapeLayer alloc]init];
        myLayer.frame = frame;
        myLayer.lineWidth = 2.0;
        myLayer.strokeColor = [UIColor blackColor].CGColor;
        myLayer.path = aPath.CGPath;
        myLayer.position = CGPointMake(frame.size.width/2, frame.size.height/2);
        [self.layer addSublayer:myLayer];
    }
    return self;
}
- (void)setStatus:(BOOL)status {
    if (status) {
        [UIView animateWithDuration:0.3 animations:^{
            myLayer.transform =
            CATransform3DRotate(myLayer.transform
                                , M_PI_4 , 0, 0, 1);

                  }];
           }else {
            [UIView animateWithDuration:0.3 animations:^{
                myLayer.transform =
                CATransform3DRotate(myLayer.transform
                                    , -M_PI_4 , 0, 0, 1);

            }];
    }
    
}

@end

