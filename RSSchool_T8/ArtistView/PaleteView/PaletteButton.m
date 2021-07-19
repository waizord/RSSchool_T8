//
//  colorButton.m
//  RSSchool_T8
//
//  Created by Ivan on 7/19/21.
//

#import "PaletteButton.h"

@implementation PaletteButton

- (void)awakeFromNib {
    [super awakeFromNib];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    //view.clipsToBounds = YES;
    view.layer.cornerRadius = 6;
    view.layer.backgroundColor = UIColor.whiteColor.CGColor;
    [self setFrame:CGRectMake(0, 0, 40, 40)];
    [self.layer setCornerRadius:25];
    [self.layer setBorderWidth:1.5];
    [self setMaskView:view];
    
    //[self.layer setBorderColor:[UIColor colorNamed:@"Little Boy Blue"].CGColor];
}

- (void)setDefaultState {
    
}

- (void)setHighlightedState {
    
}

- (void)setDisabledState {
    
}


@end
