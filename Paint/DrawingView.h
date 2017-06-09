//
//  DrawingView.h
//  Paint
//
//  Created by Sam Meech-Ward on 2017-06-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingView : UIView

//- (void)stroke;

- (void)moveToPoint:(CGPoint)point;

- (void)connectPoint:(CGPoint)point;

@end
