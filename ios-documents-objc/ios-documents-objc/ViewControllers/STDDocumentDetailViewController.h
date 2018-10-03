//
//  STDDocumentDetailViewController.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STDDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface STDDocumentDetailViewController : UIViewController
    
    @property STDDocument *document;
    @property STDDocumentController *documentController;
- (IBAction)save:(id)sender;
    
@end

NS_ASSUME_NONNULL_END
