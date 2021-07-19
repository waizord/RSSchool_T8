//
//  SecondViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/17/21.
//

#import "PaletteViewController.h"
#import "HalfSizePresentationController.h"
#import "PaletteButton.h"

@interface PaletteViewController ()
@property (weak, nonatomic)  UIButton *saveButton;
@property (weak, nonatomic) PaletteButton *greenButton;
@end

@implementation PaletteViewController

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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
 
    [self.view addSubview:self.saveButton];
    [self.view addSubview:self.greenButton];
    [self settingsStyles];

    
    // Do any additional setup after loading the view.
}
//MARK: - Styles
-(void) settingsStyles {
    self.greenButton.backgroundColor = UIColor.greenColor;
}

//MARK: - Actions
- (void)buttonPressed:(UIButton *)button {
     NSLog(@"Button Pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
