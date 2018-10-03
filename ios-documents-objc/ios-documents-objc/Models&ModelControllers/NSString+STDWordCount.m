//
//  NSString+STDWordCount.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "NSString+STDWordCount.h"

@implementation NSString (STDWordCount)

- (int *)wordCount
{
    NSArray *wordArray = [self componentsSeparatedByString:@" "];
    return (int *)[wordArray count];
}
    
@end
