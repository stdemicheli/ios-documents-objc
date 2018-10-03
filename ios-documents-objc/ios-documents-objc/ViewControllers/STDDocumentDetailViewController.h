//
//  STDDocumentDetailViewController.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STDDocument.h"
#import "STDDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface STDDocumentDetailViewController : UIViewController<UITextViewDelegate>
    
    @property (nonatomic) STDDocument *document;
    @property STDDocumentController *documentController;
    @property (weak, nonatomic) IBOutlet UILabel *wordsCountTextLabel;
    @property (weak, nonatomic) IBOutlet UITextField *titleTextField;
    @property (weak, nonatomic) IBOutlet UITextView *bodyTextView;
    - (IBAction)save:(id)sender;
    
@end

NS_ASSUME_NONNULL_END
