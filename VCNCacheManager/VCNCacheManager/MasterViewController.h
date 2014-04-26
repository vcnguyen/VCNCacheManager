//
//  MasterViewController.h
//  VCNCacheManager
//
//  Created by Chi nguyen Vo on 4/26/14.
//  Copyright (c) 2014 Chi nguyen Vo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
