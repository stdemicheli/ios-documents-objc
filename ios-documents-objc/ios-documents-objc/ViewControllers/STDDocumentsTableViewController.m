//
//  STDDocumentsTableViewController.m
//  ios-documents-objc
//
//  Created by De MicheliStefano on 03.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDocumentsTableViewController.h"
#import "STDDocumentController.h"
#import "STDDocumentDetailViewController.h"

@interface STDDocumentsTableViewController ()

@end

@implementation STDDocumentsTableViewController
    
    - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
    {
        self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        if (self) {
            _documentController = [[STDDocumentController alloc] init];
        }
        return self;
    }
    
    - (instancetype)initWithCoder:(NSCoder *)coder
    {
        self = [super initWithCoder:coder];
        if (self) {
            _documentController = [[STDDocumentController alloc] init];
        }
        return self;
    }

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[self documentController] documents] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocCell" forIndexPath:indexPath];
    
    STDDocument *document = [[self documentController] documents][[indexPath row]];
    
    [[cell textLabel] setText:[document title]];
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%d", *[document wordCount]]];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowSaveDocDetail"])
    {
        STDDocumentDetailViewController *detailVC = [segue destinationViewController];
        [detailVC setDocumentController:[self documentController]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowDocDetail"])
    {
        STDDocumentDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        STDDocument *document = [[self documentController] documents][[indexPath row]];
        [detailVC setDocument:document];
        [detailVC setDocumentController:[self documentController]];
    }
}

@end
