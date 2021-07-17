//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/16/21.
//

#import "ArtistViewController.h"
#import "PaletteViewController.h"
#import "DrawingsViewController.h"
#import "TimerViewController.h"

@interface ArtistViewController ()
@property (weak, nonatomic) IBOutlet UIView *canvasView;
@property (weak, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UIButton *rightNavButton;

@end

@implementation ArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingsNavBar];
    self.view.backgroundColor = UIColor.blueColor;
    // Do any additional setup after loading the view.
}

//MARK: - Actions
- (IBAction)openPaletteView:(id)sender {
    PaletteViewController *paletteVC = [[PaletteViewController alloc] init];
    [self addChildViewController:paletteVC];
}
- (IBAction)drawView:(id)sender {
    NSLog(@"Tap");
}
- (IBAction)openTimerView:(id)sender {
    TimerViewController *timerVC = [[TimerViewController alloc] init];
    [self addChildViewController:timerVC];
}
- (IBAction)showDravingsView:(id)sender {
    NSLog(@"show");
    DrawingsViewController *drawVC = [[DrawingsViewController alloc] init];
    [self addChildViewController:drawVC];
}
//MARK: - Styles

//MARK: NavigationBarStyles
-(void)settingsNavBar {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Montserrat-Regular" size:17];
    //label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    self.navigationItem.titleView = label;
    label.text = @"Artist";
    [label sizeToFit];
    
//    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(showDrawingsController)];
//    [button setTitleTextAttributes:@{
//        NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Regular" size:17.0],
//        NSForegroundColorAttributeName: [UIColor greenColor]
//    } forState:UIControlStateNormal];
//    self.navigationItem.rightBarButtonItem = button;
}
@end
