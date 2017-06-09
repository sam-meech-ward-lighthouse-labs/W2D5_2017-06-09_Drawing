//
//  DrawingView.m
//  Paint
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView()

@property (nonatomic, strong) UIBezierPath *path;

@end



@implementation DrawingView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [[UIColor redColor] setStroke];
    
    self.path.lineWidth = 12.0;
    
    [self.path stroke];
}
 

- (void)stroke {
    // Using this method for now, should use set needs display in rect
    [self setNeedsDisplay];
}

- (void)moveToPoint:(CGPoint)point {
    [self.path moveToPoint:point];
    [self stroke];
}

- (void)connectPoint:(CGPoint)point {
    [self.path addLineToPoint:point];
    [self stroke];
}

- (UIBezierPath *)path {
    if (!_path) {
        _path = [[UIBezierPath alloc] init];
    }
    
    return _path;
}

@end
