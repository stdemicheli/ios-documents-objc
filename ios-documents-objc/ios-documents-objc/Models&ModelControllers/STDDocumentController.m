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
    
    - (void)createWithTitle:(NSString *)title body:(NSString *)body wordCount:(int *)wordCount;
    {
        STDDocument *document = [[STDDocument alloc] initWithTitle:title body:body];
        [[self documents] addObject:document];
    }
    
    - (void)updateDoc:(STDDocument *)document
    {
        NSUInteger index = [[self documents] indexOfObject:document];
        STDDocument *documentToUpdate = [self documents][index];
        [documentToUpdate setTitle:[document title]];
        [documentToUpdate setBody:[document body]];
        [[self documents] removeObjectAtIndex:index];
        [[self documents] insertObject:documentToUpdate atIndex:index];
    }
    
    - (void)deleteDoc:(STDDocument *)document
    {
        NSUInteger index = [[self documents] indexOfObject:document];
        [[self documents] removeObjectAtIndex:index];
    }
    
@end
