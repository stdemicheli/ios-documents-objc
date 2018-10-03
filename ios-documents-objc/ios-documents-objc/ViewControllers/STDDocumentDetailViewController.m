//
//  STDDocumentDetailViewController.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDocumentDetailViewController.h"
#import "STDDocument.h"
#import "NSString+STDWordCount.h"

@interface STDDocumentDetailViewController (UITextViewDelegate)
    
    - (void)updateViews;
    
@end

@implementation STDDocumentDetailViewController

    - (void)setDocument:(STDDocument *)document {
        [self updateViews];
    }
    
    - (void)viewDidLoad {
        [super viewDidLoad];
        [self updateViews];
        [[self bodyTextView] setDelegate:self];
        [[[self bodyTextView] layer] setBorderColor:[[UIColor grayColor] CGColor]];
    }
    
    - (void)textViewDidChange:(UITextView *)textView
    {
        int *wordCount = [[[self bodyTextView] text] wordCount];
        NSString *wordCountString = [NSString stringWithFormat:@"%d words", wordCount];
        [[self wordsCountTextLabel] setText:wordCountString];
    }

    - (void)updateViews
    {
        if ([self document]) {
            [[self titleTextField] setText:[[self document] title]];
            [[self bodyTextView] setText:[[self document] body]];
        }
    }

    - (IBAction)save:(id)sender
    {
        NSString *title = [[self titleTextField] text];
        NSString *body = [[self bodyTextView] text];
        
        if ([self document]) {
            [[self documentController] updateDoc:[self document] title:title body:body];
        } else {
            [[self documentController] createWithTitle:title body:body];
        }
        
        [[self navigationController] popViewControllerAnimated:YES];
    }
@end
