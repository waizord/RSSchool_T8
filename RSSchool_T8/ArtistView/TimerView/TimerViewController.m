//
//  TimerViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "TimerViewController.h"

@interface TimerViewController ()
@property (nonatomic, readonly) UIColor *lightGreenSea;
@property (nonatomic, readonly) UIColor *chillSky;
@end

@implementation TimerViewController

//MARK: Constants
- (UIColor *)lightGreenSea {
    return [[UIColor alloc] initWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
- (UIColor *)chillSky {
    return [[UIColor alloc] initWithRed:0.0 green:0.7 blue:1.0 alpha:1];
}

-(UIButton *)saveButton {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 85, 32)];
    button.center = CGPointMake(293.5, 36);
    [button setTitle:@"Save" forState:UIControlStateNormal];
    UIColor *ligtGrenSeaTapped = [self.lightGreenSea colorWithAlphaComponent:0.25];
    [button setTitleColor: ligtGrenSeaTapped forState:UIControlStateHighlighted];
    [button.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Medium" size:18]];
    button.backgroundColor = UIColor.whiteColor;
    button.layer.masksToBounds = NO;
    button.layer.cornerRadius = 10;
    button.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    button.layer.shadowRadius = 2.0;
    button.layer.shadowOffset = CGSizeZero;
    button.layer.shadowOpacity = 1.0;
    [button setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    // Add an action in current code file (i.e. target)
    [button addTarget:self action:@selector(buttonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.view addSubview:self.saveButton];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self viewStyle];
    [self buttonsStyle];
    
    [self.view addSubview:self.saveButton];
}
//MARK: - Styles
-(void) viewStyle {
    self.view.layer.cornerRadius = 40.0;
    self.view.layer.masksToBounds = NO;
    self.view.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.view.layer.shadowRadius = 8.0;
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    
}

-(void) buttonsStyle {
}
//MARK: - Actions
- (void)buttonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
