//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Ivan on 7/16/21.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blueColor;
    // Do any additional setup after loading the view.
}

- (IBAction)tapOnSecondView:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.splitViewController showDetailViewController:secondVC sender:self];
    //[self.navigationController popToViewController:secondVC animated:YES];
}

@end
