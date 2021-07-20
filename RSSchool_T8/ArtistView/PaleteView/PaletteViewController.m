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

@property (nonatomic, strong) UIButton *greenButton;

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
    
    
}
//MARK: - Actions
- (void)saveButtonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
