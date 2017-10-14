//
//  ViewController.m
//  CreateFiles
//
//  Created by Mohit Bhakre on 14/10/17.
//  Copyright © 2017 Mohit Bhakre. All rights reserved.
//

#import "ViewController.h"
#import "CreateAFileViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btnGetStarted;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden=YES;
}
- (IBAction)doActionGetStarted:(id)sender {
    
    CreateAFileViewController *create = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAFileViewController"];
    [self.navigationController pushViewController:create animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
