//
//  STDDocumentDetailViewController.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDocumentDetailViewController.h"

@interface STDDocumentDetailViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *wordsCountTextLabel;
    @property (weak, nonatomic) IBOutlet UITextField *titleTextField;
    @property (weak, nonatomic) IBOutlet UITextView *bodyTextView;
    
@end

@implementation STDDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
}
    @end
