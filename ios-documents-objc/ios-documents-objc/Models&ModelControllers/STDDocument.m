//
//  STDDocument.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDocument.h"
#import "NSString+STDWordCount.h"

@implementation STDDocument

    - (instancetype)initWithTitle:(NSString *)title body:(NSString *)body
    {
        self = [super init];
        if (self) {
            _title = title;
            _body = body;
        }
        return self;
    }
    
    - (int *)wordCount
    {
        return [[self body] wordCount];
    }
    
@end
