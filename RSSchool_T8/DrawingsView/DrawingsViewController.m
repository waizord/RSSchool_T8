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

@end

@implementation DrawingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self settingsNavBar];
}
//MARK: - Actions
- (IBAction)pictureSelectTag:(id)sender {
    NSLog(@"%lu", [sender tag]);
}

//MARK: - Styles

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
    
    [self.navigationController.navigationBar setTintColor: UIColor.greenColor];
    
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
