//
//  STDDocumentController.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDocumentController.h"
#import "STDDocument.h"

@implementation STDDocumentController

    - (instancetype)init
    {
        self = [super init];
        if (self) {
            _documents = [[NSMutableArray alloc] init];
        }
        return self;
    }
    
    - (void)createWithTitle:(NSString *)title body:(NSString *)body;
    {
        STDDocument *document = [[STDDocument alloc] initWithTitle:title body:body];
        [[self documents] addObject:document];
    }
    
    - (void)updateDoc:(STDDocument *)document title:(NSString *)title body:(NSString *)body
    {
        NSUInteger index = [[self documents] indexOfObject:document];
        STDDocument *documentToUpdate = [self documents][index];
        [documentToUpdate setTitle:title];
        [documentToUpdate setBody:body];
        [[self documents] removeObjectAtIndex:index];
        [[self documents] insertObject:documentToUpdate atIndex:index];
    }
    
    - (void)deleteDoc:(STDDocument *)document
    {
        NSUInteger index = [[self documents] indexOfObject:document];
        [[self documents] removeObjectAtIndex:index];
    }
    
@end
