//
//  TimerViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "TimerViewController.h"

@interface TimerViewController ()
@property (nonatomic, strong)  UIButton *saveButton;
@property (nonatomic, strong)  UISlider *sliderView;

@property (nonatomic, strong)  UILabel *sliderLeftLabel;
@property (nonatomic, strong)  UILabel *sliderRightLabel;
@property (nonatomic, strong)  UILabel *sliderBotomLabel;

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
  
    [button addTarget:self action:@selector(buttonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (UISlider *)sliderView {
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 223.0, 4.0)];
    slider.center = CGPointMake(111.5 + 74.0, 114);
    slider.minimumValue = 1.0;
    slider.maximumValue = 5.0;
    slider.tintColor = self.lightGreenSea;
    [slider addTarget:self action:@selector(sliderChange:) forControlEvents:UIControlEventValueChanged];
    return slider;
}
- (UILabel *)sliderLeftLabel {
    UILabel *label = [UILabel new];
    label.center = CGPointMake(29.5, 103.0);
    [label setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [label setTextColor:UIColor.blackColor];
    label.text = @"1";
    [label sizeToFit];
    return label;
}
- (UILabel *)sliderRightLabel {
    UILabel *label = [UILabel new];
    label.center = CGPointMake(338.0 + 5.5, 103.0);
    [label setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [label setTextColor:UIColor.blackColor];
    label.text = @"5";
    [label sizeToFit];
    return label;
}
- (UILabel *)sliderBotomLabel {
    UILabel *label = [UILabel new];
    label.center = CGPointMake(162.0, 161.0);
    [label setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [label setTextColor:UIColor.blackColor];
    label.text = [[NSString alloc]initWithFormat:@"%f.2", self.sliderView.value];
    [label sizeToFit];
    return label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self viewStyle];
//    [self buttonsStyle];
    
//    _sliderBotomLabel = [UILabel new];
//    _sliderBotomLabel.center = CGPointMake(162.0, 161.0);
//    [_sliderBotomLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
//    [_sliderBotomLabel setTextColor:UIColor.blackColor];
//    _sliderBotomLabel.text = [[NSString alloc]initWithFormat:@"%f.2", self.sliderView.value];
//    [_sliderBotomLabel sizeToFit];
    //[self.view addSubview:self.saveButton];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self viewStyle];
    [self buttonsStyle];
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
    
    [self.view addSubview:self.sliderView];
    [self.view addSubview:self.sliderLeftLabel];
    [self.view addSubview:self.sliderRightLabel];
    [self.view addSubview:self.sliderBotomLabel];
    [self.view addSubview:self.saveButton];
}
//MARK: - Actions
- (void)buttonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)sliderChange: (UISlider*) slider {
    NSLog(@"%f", slider.value);
    self.sliderBotomLabel.text = [NSString stringWithFormat:@"%f", slider.value];
    NSLog(@"Label @%@", self.sliderBotomLabel.text );
    
}
@end
