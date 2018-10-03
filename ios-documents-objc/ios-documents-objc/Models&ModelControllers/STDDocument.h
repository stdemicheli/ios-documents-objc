//
//  STDDocument.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDDocument : NSObject

    @property NSString *title;
    @property NSString *body;
    @property (readonly) int *wordCount;

@end

NS_ASSUME_NONNULL_END
