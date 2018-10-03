//
//  STDCoreDataStack.h
//  ios-documents-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDCoreDataStack : NSObject

    @property NSPersistentContainer *container;
    @property NSManagedObjectContext *mainContext;
    
@end

NS_ASSUME_NONNULL_END
