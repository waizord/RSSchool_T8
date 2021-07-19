//
//  SecondViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "PaletteViewController.h"
#import "HalfSizePresentationController.h"
//#import "PaletteButton.h"

@interface PaletteViewController ()
@property (nonatomic, strong)  UIButton *saveButton;
@property (nonatomic, strong) UIButton *greenButton;
@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self viewStyle];
 
    
    [self settingsStyleButtons];
    NSLog(@"%@", _greenButton);
    
    [self.view addSubview:self.saveButton];
    [self.view addSubview:self.greenButton];
    

    
    // Do any additional setup after loading the view.
}
//MARK: - Styles
-(void) viewStyle {
    self.view.layer.borderColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.view.layer.borderWidth = 1.0;
    self.view.layer.shadowRadius = 8.0;
    self.view.layer.shadowOpacity = 0.5;
    self.view.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    
    CAShapeLayer *maskLayer = [CAShapeLayer new];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(40.0, 40.0)];
    self.view.layer.shadowPath = path.CGPath;
    //maskLayer
    maskLayer.path = path.CGPath;
    maskLayer.borderWidth = 1.0;
    maskLayer.shadowRadius = 8.0;
    maskLayer.shadowOffset = CGSizeMake(0.0, 0.0);
    maskLayer.shadowOpacity = 1.0;
    self.view.layer.mask = maskLayer;
}

-(UIButton *)saveButton {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 85, 32)];
    button.center = CGPointMake(293.5, 36);
    [button setTitle:@"Save" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Medium" size:18]];
    button.backgroundColor = UIColor.blackColor;
    
    // Add an action in current code file (i.e. target)
    [button addTarget:self action:@selector(buttonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    return button;
}


//MARK: - Actions
- (void)buttonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
