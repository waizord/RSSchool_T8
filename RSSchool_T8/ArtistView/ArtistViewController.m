//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/16/21.
//

#import "ArtistViewController.h"
#import "PaletteViewController.h"
#import "RSSchool_T8-Swift.h"
#import "HalfSizePresentationController.h"

@interface ArtistViewController () <UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UIView *canvasView;
@property (weak, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UIButton *rightNavButton;

@property (strong, nonatomic) DrawingsVC *drawingsVC;
@property (strong, nonatomic) TimerVC *timerVC;

@property (nonatomic, readwrite) UIView *canvasDrawView;

@property (nonatomic, readonly) UIColor *lightGreenSea;
@property (nonatomic, readonly) UIColor *chillSky;

@end

@implementation ArtistViewController

//MARK: Constants
- (UIColor *)lightGreenSea {
    return [[UIColor alloc] initWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
- (UIColor *)chillSky {
    return [[UIColor alloc] initWithRed:0.0 green:0.7 blue:1.0 alpha:1];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self buttonsStyle];
    [self settingsNavBar];
    [self canvasStyle];
}

//MARK: - Actions
- (IBAction)openPaletteView:(id)sender {
    PaletteViewController *paletteVC = [[PaletteViewController alloc] initWithNibName:@"PaletteViewController" bundle:nil];
    paletteVC.transitioningDelegate = self;
    paletteVC.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:paletteVC animated:YES completion:nil];
}
- (IBAction)drawView:(id)sender {
    NSLog(@"Tap");
}
- (IBAction)openTimerView:(id)sender {
    self.timerVC = [[TimerVC alloc] initWithNibName:@"TimerVC" bundle:nil];
    self.timerVC.transitioningDelegate = self;
    self.timerVC.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:self.timerVC animated:YES completion:nil];
}
- (IBAction)showDravingsView:(id)sender {
    self.drawingsVC = [[DrawingsVC alloc] initWithNibName:@"DrawingsVC" bundle:nil];
    [self showViewController:self.drawingsVC sender:nil];
}
//MARK: - Delegates
-(UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
    
    return [[HalfSizePresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}
//MARK: - Styles
-(void) buttonsStyle {
    
    self.openPaletteButton.backgroundColor = UIColor.whiteColor;
    self.openPaletteButton.layer.masksToBounds = NO;
    self.openPaletteButton.layer.cornerRadius = 10;
    self.openPaletteButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.openPaletteButton.layer.shadowRadius = 2.0;
    self.openPaletteButton.layer.shadowOffset = CGSizeZero;
    self.openPaletteButton.layer.shadowOpacity = 1.0;
    [self.openPaletteButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.openTimerButton.backgroundColor = UIColor.whiteColor;
    self.openTimerButton.layer.masksToBounds = NO;
    self.openTimerButton.layer.cornerRadius = 10;
    self.openTimerButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.openTimerButton.layer.shadowRadius = 2.0;
    self.openTimerButton.layer.shadowOffset = CGSizeZero;
    self.openTimerButton.layer.shadowOpacity = 1.0;
    [self.openTimerButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.drawButton.backgroundColor = UIColor.whiteColor;
    self.drawButton.layer.masksToBounds = NO;
    self.drawButton.layer.cornerRadius = 10;
    self.drawButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.drawButton.layer.shadowRadius = 2.0;
    self.drawButton.layer.shadowOffset = CGSizeZero;
    self.drawButton.layer.shadowOpacity = 1.0;
    [self.drawButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.shareButton.backgroundColor = UIColor.whiteColor;
    self.shareButton.layer.masksToBounds = NO;
    self.shareButton.layer.cornerRadius = 10;
    self.shareButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.shareButton.layer.shadowRadius = 2.0;
    self.shareButton.layer.shadowOffset = CGSizeZero;
    self.shareButton.layer.shadowOpacity = 1.0;
    [self.shareButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    [self.shareButton setAlpha:0.5];
    [self.shareButton setEnabled:NO];
}

-(void) canvasStyle {
    self.canvasDrawView = [[UIView alloc] initWithFrame:self.canvasView.bounds];
    self.canvasDrawView.backgroundColor = UIColor.whiteColor;
    self.canvasDrawView.layer.cornerRadius = 8;
    
    self.canvasView.backgroundColor = UIColor.whiteColor;
    UIColor *chullSkyShadow = [self.chillSky colorWithAlphaComponent:0.25];
    self.canvasView.layer.cornerRadius = 8;
    self.canvasView.layer.shadowColor = chullSkyShadow.CGColor;
    self.canvasView.layer.shadowRadius = 8.0;
    self.canvasView.layer.shadowOffset = CGSizeZero;
    self.canvasView.layer.shadowOpacity = 1.0;
    
    [self.canvasView addSubview:self.canvasDrawView];
}
//MARK: NavigationBarStyles
-(void)settingsNavBar {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Montserrat-Regular" size:17];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    self.navigationItem.titleView = label;
    label.text = @"Artist";
    [label sizeToFit];
    
    self.title = @"Artist";
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"Drawings" attributes:@{ NSForegroundColorAttributeName: self.lightGreenSea }];
    [self.rightNavButton setAttributedTitle:string forState:UIControlStateNormal];
}
@end
