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
@property (nonatomic, readonly) UIColor *red;
@property (nonatomic, readonly) UIColor *blue;
@property (nonatomic, readonly) UIColor *green;
@property (nonatomic, readonly) UIColor *gray;
@property (nonatomic, readonly) UIColor *purp;
@property (nonatomic, readonly) UIColor *lightRed;
@property (nonatomic, readonly) UIColor *orange;
@property (nonatomic, readonly) UIColor *lightBlue;
@property (nonatomic, readonly) UIColor *pink;
@property (nonatomic, readonly) UIColor *darkBlue;
@property (nonatomic, readonly) UIColor *darkGreen;
@property (nonatomic, readonly) UIColor *brown;

@property (nonatomic, strong) CAShapeLayer *maskColor;
@property (nonatomic, strong) UIView *viewSap;
@end

@implementation PaletteViewController

//MARK: Constant colors
- (UIColor *)lightGreenSea {
    return [[UIColor alloc] initWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
- (UIColor *)chillSky {
    return [[UIColor alloc] initWithRed:0.0 green:0.7 blue:1.0 alpha:1];
}
- (UIColor *)red {
    return [[UIColor alloc] initWithRed:0.886 green:0.106 blue:0.173 alpha:1];
}
- (UIColor *)blue {
    return [[UIColor alloc] initWithRed:0.243 green:0.09 blue:0.8 alpha:1];
}
- (UIColor *)green {
    return [[UIColor alloc] initWithRed:0.0 green:0.486 blue:0.216 alpha:1];
}
- (UIColor *)gray {
    return [[UIColor alloc] initWithRed:0.502 green:0.502 blue:0.502 alpha:1];
}
- (UIColor *)purp {
    return [[UIColor alloc] initWithRed:0.616 green:0.369 blue:0.918 alpha:1];
}
- (UIColor *)lightRed {
    return [[UIColor alloc] initWithRed:1.0 green:0.478 blue:0.408 alpha:1];
}
- (UIColor *)orange {
    return [[UIColor alloc] initWithRed:1.0 green:0.678 blue:0.329 alpha:1];
}
- (UIColor *)lightBlue {
    return [[UIColor alloc] initWithRed:0.0 green:0.682 blue:0.929 alpha:1];
}
- (UIColor *)pink {
    return [[UIColor alloc] initWithRed:1.0 green:0.476 blue:0.635 alpha:1];
}
- (UIColor *)darkBlue {
    return [[UIColor alloc] initWithRed:0.0 green:0.18 blue:0.235 alpha:1];
}
- (UIColor *)darkGreen {
    return [[UIColor alloc] initWithRed:0.055 green:0.216 blue:0.094 alpha:1];
}
- (UIColor *)brown {
    return [[UIColor alloc] initWithRed:0.38 green:0.059 blue:0.063 alpha:1];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    
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
    
    self.viewSap = [[UIView alloc] initWithFrame: CGRectMake(0, (self.view.bounds.size.height / 2.0) - 40, self.view.bounds.size.width, 40.0)];
    self.viewSap.backgroundColor = UIColor.whiteColor;
    [self.view addSubview: self.viewSap];
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
    
    
    self.redButton = [self setStyleFor:self.redButton layer:self.maskColor color:self.red tag:1];
    self.blueButton = [self setStyleFor:self.blueButton layer:self.maskColor color:self.blue tag:2];
    self.greenButton = [self setStyleFor:self.greenButton layer:self.maskColor color:self.green tag:3];
    self.grayButton = [self setStyleFor:self.grayButton layer:self.maskColor color:self.gray tag:4];
    self.purpButton = [self setStyleFor:self.purpButton layer:self.maskColor color:self.purp tag:5];
    self.lightRedButton = [self setStyleFor:self.lightRedButton layer:self.maskColor color:self.lightRed tag:6];
    self.orangeButton = [self setStyleFor:self.orangeButton layer:self.maskColor color:self.orange tag:7];
    self.lightBlueButton = [self setStyleFor:self.lightBlueButton layer:self.maskColor color:self.lightBlue tag:8];
    self.pinkButton = [self setStyleFor:self.pinkButton layer:self.maskColor color:self.pink tag:9];
    self.darkBlueButton = [self setStyleFor:self.darkBlueButton layer:self.maskColor color:self.darkBlue tag:10];
    self.darkGreenButton = [self setStyleFor:self.darkGreenButton layer:self.maskColor color:self.darkGreen tag:11];
    self.brownButton = [self setStyleFor:self.brownButton layer:self.maskColor color:self.brown tag:12];
}
    //MARK: Custom style buttons and mask
-(UIButton *) setStyleFor: (UIButton *)button layer:(CAShapeLayer*) layer color:(UIColor *)color tag:(NSInteger) tag {
    button.backgroundColor = UIColor.whiteColor;
    button.tag = tag;
    button.layer.masksToBounds = NO;
    button.layer.cornerRadius = 10;
    button.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    button.layer.shadowRadius = 2.0;
    button.layer.shadowOffset = CGSizeZero;
    button.layer.shadowOpacity = 1.0;
    CALayer *layerMask = [self setCustomMask:color];
    [button.layer addSublayer:layerMask];
    return button;
}
-(CAShapeLayer *) setCustomMask: (UIColor *) color {
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(8, 8, 24.0, 24.0) cornerRadius:6.0];
    layer.path = path.CGPath;
    layer.fillColor = color.CGColor;
    return layer;
}
    //MARK: Change color
-(void) changeViewColor: (UIColor *) color {
    self.view.backgroundColor = color;
    self.viewSap.backgroundColor = color;
}
-(void) changeButtonColor: (UIButton *) button :(UIColor *) color {
    button.backgroundColor = color;
}
//MARK: - Actions
- (void)saveButtonPressed:(UIButton *)button {
     NSLog(@"save");
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)selectColor:(UIButton *)sender {
    NSLog(@"%lu", sender.tag);
    switch (sender.tag) {
        case 1:
            [self changeButtonColor:sender :self.red];
            [self changeViewColor:self.red];
            break;
        case 2:
            [self changeButtonColor:sender :self.blue];
            [self changeViewColor:self.blue];
            break;
        case 3:
            [self changeButtonColor:sender :self.green];
            [self changeViewColor:self.green];
            break;
        case 4:
            [self changeButtonColor:sender :self.gray];
            [self changeViewColor:self.gray];
            break;
        case 5:
            [self changeButtonColor:sender :self.purp];
            [self changeViewColor:self.purp];
            break;
        case 6:
            [self changeButtonColor:sender :self.lightRed];
            [self changeViewColor:self.lightRed];
            break;
        case 7:
            [self changeButtonColor:sender :self.orange];
            [self changeViewColor:self.orange];
            break;
        case 8:
            [self changeButtonColor:sender :self.lightBlue];
            [self changeViewColor:self.lightBlue];
            break;
        case 9:
            [self changeButtonColor:sender :self.pink];
            [self changeViewColor:self.pink];
            break;
        case 10:
            [self changeButtonColor:sender :self.darkBlue];
            [self changeViewColor:self.darkBlue];
            break;
        case 11:
            [self changeButtonColor:sender :self.darkGreen];
            [self changeViewColor:self.darkGreen];
            break;
        case 12:
            [self changeButtonColor:sender :self.brown];
            [self changeViewColor:self.brown];
            break;
        default:
            NSLog(@"Error color buttons");
            break;
    }
    
}

@end
