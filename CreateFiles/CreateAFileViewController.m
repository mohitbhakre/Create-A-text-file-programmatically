//
//  CreateAFileViewController.m
//  CreateFiles
//
//  Created by Mohit Bhakre on 14/10/17.
//  Copyright © 2017 Mohit Bhakre. All rights reserved.
//

#import "CreateAFileViewController.h"

@interface CreateAFileViewController ()<UITextViewDelegate,UITextFieldDelegate>

@end

@implementation CreateAFileViewController
@synthesize textViewyourText,btnCreateFile,textFieldFileName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    textViewyourText.delegate=self;
    [textFieldFileName setDelegate: self];
}
- (IBAction)doActionBtnCreateFile:(UIButton *)sender {
    
    if ([textFieldFileName.text isEqualToString:@""]|| textFieldFileName.text==nil) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Information" message:@"Please enter name" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    
    else if ([textViewyourText.text isEqualToString:@""]|| textViewyourText.text==nil) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Information" message:@"Please enter name" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }

    
    else
    {
    NSError *error;
    NSString *stringToWrite = textViewyourText.text;
    NSString *fileName = textFieldFileName.text;
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt",fileName]];
    [stringToWrite writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
    NSLog(@"filepath = %@",filePath);
        
    if ([filePath isEqualToString:@""] || filePath ==nil) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Information" message:@"Please enter text" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"File Path" message:filePath delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
  }
    
}
-(void)textViewDidBeginEditing:(UITextView *)textView
{
    textViewyourText.text=@"";
}
- (IBAction)goback:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark--> textview delegate
-(void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Information" message:@"Please enter text" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
