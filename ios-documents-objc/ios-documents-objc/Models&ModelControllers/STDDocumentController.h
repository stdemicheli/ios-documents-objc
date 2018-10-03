//
//  STDDocumentController.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STDDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface STDDocumentController : NSObject

    @property NSMutableArray *documents;
    - (void)createWithTitle:(NSString *)title body:(NSString *)body;
    - (void)updateDoc:(STDDocument *)document title:(NSString *)title body:(NSString *)body;
    - (void)deleteDoc:(STDDocument *)document;
    
@end

NS_ASSUME_NONNULL_END
