//
//  DrawingsViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "DrawingsViewController.h"

@interface DrawingsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *planetButton;
@property (weak, nonatomic) IBOutlet UIButton *headButton;
@property (weak, nonatomic) IBOutlet UIButton *treeButton;
@property (weak, nonatomic) IBOutlet UIButton *landscapeButton;

@property (nonatomic, readonly) UIColor *lightGreenSea;
@property (nonatomic, readonly) UIColor *chillSky;

@end

@implementation DrawingsViewController

//MARK: Constants
- (UIColor *)lightGreenSea {
    return [[UIColor alloc] initWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
- (UIColor *)chillSky {
    return [[UIColor alloc] initWithRed:0.0 green:0.7 blue:1.0 alpha:1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self buttonsStyle];
    [self settingsNavBar];
}
//MARK: - Actions
- (IBAction)pictureSelectTag:(id)sender {
    NSLog(@"%lu", [sender tag]);
}

//MARK: - Styles
-(void) buttonsStyle {
    
    self.planetButton.backgroundColor = UIColor.whiteColor;
    self.planetButton.layer.masksToBounds = NO;
    self.planetButton.layer.cornerRadius = 10;
    self.planetButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.planetButton.layer.shadowRadius = 2.0;
    self.planetButton.layer.shadowOffset = CGSizeZero;
    self.planetButton.layer.shadowOpacity = 1.0;
    [self.planetButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.headButton.backgroundColor = UIColor.whiteColor;
    self.headButton.layer.masksToBounds = NO;
    self.headButton.layer.cornerRadius = 10;
    self.headButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.headButton.layer.shadowRadius = 2.0;
    self.headButton.layer.shadowOffset = CGSizeZero;
    self.headButton.layer.shadowOpacity = 1.0;
    [self.headButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.treeButton.backgroundColor = UIColor.whiteColor;
    self.treeButton.layer.masksToBounds = NO;
    self.treeButton.layer.cornerRadius = 10;
    self.treeButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.treeButton.layer.shadowRadius = 2.0;
    self.treeButton.layer.shadowOffset = CGSizeZero;
    self.treeButton.layer.shadowOpacity = 1.0;
    [self.treeButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    
    self.landscapeButton.backgroundColor = UIColor.whiteColor;
    self.landscapeButton.layer.masksToBounds = NO;
    self.landscapeButton.layer.cornerRadius = 10;
    self.landscapeButton.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
    self.landscapeButton.layer.shadowRadius = 2.0;
    self.landscapeButton.layer.shadowOffset = CGSizeZero;
    self.landscapeButton.layer.shadowOpacity = 1.0;
    [self.landscapeButton setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
}

//MARK: NavigationBarStyles
-(void)settingsNavBar {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Montserrat-Regular" size:17];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    self.navigationItem.titleView = label;
    label.text = @"Drawings";
    [label sizeToFit];
    
    [self.navigationController.navigationBar setTintColor: self.lightGreenSea];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
