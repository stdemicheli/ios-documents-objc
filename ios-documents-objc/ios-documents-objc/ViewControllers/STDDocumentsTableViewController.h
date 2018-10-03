//
//  STDDocumentsTableViewController.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STDDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface STDDocumentsTableViewController : UITableViewController

    @property STDDocumentController *documentController;
    
@end

NS_ASSUME_NONNULL_END
