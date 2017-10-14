//
//  CreateAFileViewController.h
//  CreateFiles
//
//  Created by Mohit Bhakre on 14/10/17.
//  Copyright © 2017 Mohit Bhakre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAFileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textViewyourText;
@property (weak, nonatomic) IBOutlet UIButton *btnCreateFile;
@property (weak, nonatomic) IBOutlet UITextField *textFieldFileName;
@property (weak, nonatomic) IBOutlet UIButton *btnBack;

@end
