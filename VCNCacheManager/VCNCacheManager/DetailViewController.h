//
//  DetailViewController.h
//  VCNCacheManager
//
//  Created by Chi nguyen Vo on 4/26/14.
//  Copyright (c) 2014 Chi nguyen Vo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
