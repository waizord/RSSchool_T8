//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/16/21.
//

#import "ArtistViewController.h"
#import "PaleteViewController.h"
#import "DrawingsViewController.h"
#import "TimerViewController.h"

@interface ArtistViewController ()

@end

@implementation ArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blueColor;
    // Do any additional setup after loading the view.
}

- (IBAction)tapOnPaleteView:(id)sender {
    PaleteViewController *paleteVC = [[PaleteViewController alloc] init];
    [self addChildViewController:paleteVC];
}
- (IBAction)tapOnDrawingsView:(id)sender {
    DrawingsViewController *drawVC = [[DrawingsViewController alloc] init];
    [self.navigationController popToViewController:drawVC animated:YES];
}
- (IBAction)timerButton:(id)sender {
    TimerViewController *timerVC = [[TimerViewController alloc] init];
    [self addChildViewController:timerVC];
}

@end
