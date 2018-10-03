//
//  STDCoreDataStack.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDCoreDataStack.h"
#import <CoreData/CoreData.h>

@implementation STDCoreDataStack
    
    + (instancetype)sharedInstance
    {
        static STDCoreDataStack *sharedInstance = NULL;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            sharedInstance = [[STDCoreDataStack alloc] init];
        });
        return sharedInstance;
    }
    
    - (NSPersistentContainer *)setContainer
    {
        NSPersistentContainer *container = [[NSPersistentContainer alloc] initWithName:@"Document"];
        [container loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *r, NSError *error) {
            if (error) {
                NSLog(@"%@", error);
            }
        }];
        return container;
    }
    
    - (NSManagedObjectContext *)setMainContext
    {
        return [[self container] viewContext];
    }
    
@end
