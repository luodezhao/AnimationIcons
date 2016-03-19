//
//  Btn2.m
//  AnimationIcons
//
//  Created by YB on 16/1/23.
//  Copyright © 2016年 YB. All rights reserved.
//

#import "Btn2.h"

@implementation Btn2

- (void)setStatus:(NSInteger)status {
    if (status) {
        [UIView animateWithDuration:0.3
                         animations:^{
                             layerTop.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 2) ;
                             layerTop.transform = CATransform3DScale(layerTop.transform, 1.4, 1, 1);
                             layerBtm.transform = CATransform3DMakeRotation(-M_PI_4, 0, 0, 2) ;
                             layerBtm.transform = CATransform3DScale(layerBtm.transform, 1.4, 1, 1);


                             layerMid.transform = CATransform3DScale(layerMid.transform, 0, 0, 1);
                             

                            
                         }];

    }else {
        [UIView animateWithDuration:0.3 animations:^{
            layerTop.transform = CATransform3DIdentity;
            layerBtm.transform = CATransform3DIdentity;
            layerMid.transform = CATransform3DIdentity;
        }];
    }
    
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setTopWithFrame:frame];
        [self setBtmWithFrame:frame];
        [self setMiddleWithFrame:frame];
          }
    return self;
}
- (void)setTopWithFrame:(CGRect)frame {
    UIColor *a = [UIColor blackColor];
    [a set];
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    CGPoint centerPoint =  CGPointMake(frame.size.width/2,frame.size.height/2 );
    CGFloat width = MIN(frame.size.height, frame.size.width);
    [aPath moveToPoint:CGPointMake(0 , 0)];
    [aPath addLineToPoint:CGPointMake(0.6 * width, 0)];
    aPath.lineWidth = 2;
    layerTop = [[CAShapeLayer alloc]init];
    layerTop.path = aPath.CGPath;
    layerTop.lineWidth = 2.0;
    layerTop.strokeColor = [UIColor blackColor].CGColor;
    [self.layer addSublayer:layerTop];
    layerTop.position =CGPointMake(centerPoint.x - 0.3 * width , centerPoint.y - 0.3 * width);

    
}
- (void)setMiddleWithFrame:(CGRect)frame {
    
    CGPoint centerPoint =  CGPointMake(frame.size.width/2,frame.size.height/2 );
    CGFloat width = MIN(frame.size.height, frame.size.width);
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    [aPath moveToPoint:CGPointMake(- 0.2 * width, 0)];
    [aPath addLineToPoint:CGPointMake( 0.2 *width, 0)];
    layerMid = [[CAShapeLayer alloc]init];
    layerMid.path = aPath.CGPath;
    layerMid.lineWidth = 2.0;
    layerMid.strokeColor = [UIColor blackColor].CGColor;
    [self.layer addSublayer:layerMid];
    layerMid.position =CGPointMake(centerPoint.x  , centerPoint.y);

    
}
- (void)setBtmWithFrame:(CGRect)frame {
    CGPoint centerPoint =  CGPointMake(frame.size.width/2,frame.size.height/2 );
    CGFloat width = MIN(frame.size.height, frame.size.width);
    layerBtm = [[CAShapeLayer alloc]init];
    layerBtm.path = layerTop.path;
    layerBtm.lineWidth = 2.0;
    layerBtm.strokeColor = [UIColor blackColor].CGColor;
    [self.layer addSublayer:layerBtm];
    layerBtm.position =CGPointMake(centerPoint.x - 0.3 * width , centerPoint.y + 0.3 * width);
}


@end
