//
//  HalfSizePresentationController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/18/21.
//

#import "HalfSizePresentationController.h"

@interface HalfSizePresentationController ()

@end

@implementation HalfSizePresentationController

- (CGRect)frameOfPresentedViewInContainerView {
    [super frameOfPresentedViewInContainerView];
    
    UIView *theView = self.containerView;
    return CGRectMake(0, theView.bounds.size.height - (theView.bounds.size.height - 333.5), theView.bounds.size.width, 333.5);
}

@end
