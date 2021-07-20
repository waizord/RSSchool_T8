//
//  SecondViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "PaletteViewController.h"
#import "HalfSizePresentationController.h"

@interface PaletteViewController ()
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *grayButton;
@property (weak, nonatomic) IBOutlet UIButton *purpButton;
@property (weak, nonatomic) IBOutlet UIButton *lightRedButton;
@property (weak, nonatomic) IBOutlet UIButton *orangeButton;
@property (weak, nonatomic) IBOutlet UIButton *lightBlueButton;
@property (weak, nonatomic) IBOutlet UIButton *pinkButton;
@property (weak, nonatomic) IBOutlet UIButton *darkBlueButton;
@property (weak, nonatomic) IBOutlet UIButton *darkGreenButton;
@property (weak, nonatomic) IBOutlet UIButton *brownButton;

@property (nonatomic, readonly) UIColor *lightGreenSea;
@property (nonatomic, readonly) UIColor *chillSky;


@property (nonatomic, strong) UIView *viewSap;
@end

@implementation PaletteViewController

//MARK: Constants
- (UIColor *)lightGreenSea {
    return [[UIColor alloc] initWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
- (UIColor *)chillSky {
    return [[UIColor alloc] initWithRed:0.0 green:0.7 blue:1.0 alpha:1];
}


//-(UIButton *)saveButton {
//
//    return button;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.saveButton];
    [self.view addSubview:self.greenButton];
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
    
    UIView *viewSap = [[UIView alloc] initWithFrame: CGRectMake(0, (self.view.bounds.size.height / 2.0) - 40, self.view.bounds.size.width, 40.0)];
    viewSap.backgroundColor = UIColor.whiteColor;
    [self.view addSubview: viewSap];
}

-(void) buttonsStyle {
    self.saveButton.backgroundColor = UIColor.whiteColor;
    self.saveButton.layer.masksToBounds = NO;
    self.saveButton.layer.cornerRadius = 10;
    self.saveButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.saveButton.layer.shadowRadius = 2.0;
    self.saveButton.layer.shadowOffset = CGSizeZero;
    self.saveButton.layer.shadowOpacity = 1.0;
    [self.saveButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    // Add an action in current code file (i.e. target)
    [self.saveButton addTarget:self action:@selector(saveButtonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    
    CAShapeLayer *maskColor = [[CAShapeLayer alloc] init];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(8, 8, 24.0, 24.0) cornerRadius:6.0];
//    UIBezierPath *pat = UIBezierPath bezierPathWithArcCenter:<#(CGPoint)#> radius:<#(CGFloat)#> startAngle:<#(CGFloat)#> endAngle:<#(CGFloat)#> clockwise:<#(BOOL)#>
    maskColor.path = path.CGPath;
    maskColor.backgroundColor = UIColor.blueColor.CGColor;
    
    self.redButton.backgroundColor = UIColor.whiteColor;
    self.redButton.tag = 1;
    self.redButton.layer.masksToBounds = NO;
    self.redButton.layer.cornerRadius = 10;
    self.redButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.redButton.layer.shadowRadius = 2.0;
    self.redButton.layer.shadowOffset = CGSizeZero;
    self.redButton.layer.shadowOpacity = 1.0;
    [self.redButton.layer addSublayer:maskColor];
    
}
-(UIButton *) setButton: (CALayer *)layer : (UIColor *)color {
    UIButton *button = [UIButton new];
    return button;
}
//MARK: - Actions
- (void)saveButtonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)selectColor:(UIButton *)sender {
    NSLog(@"%lu", sender.tag);
}

@end
