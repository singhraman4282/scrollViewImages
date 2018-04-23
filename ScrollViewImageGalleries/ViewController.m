//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) NSArray *images;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *thisImage = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:thisImage];
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.scrollView addSubview:imageView];
    
  thisImage = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    imageView = [[UIImageView alloc] initWithImage:thisImage];
     frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.scrollView addSubview:imageView];
    
    
    thisImage = [UIImage imageNamed:@"Lighthouse.jpg"];
    imageView = [[UIImageView alloc] initWithImage:thisImage];
    frame = CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
    
    self.scrollView.pagingEnabled = YES;

    
    
    
}//load

//
//- (NSArray <UIImage *> *)images {
//
//    return @[
//             [UIImage imageNamed:@"Lighthouse-in-Field"],
//             [UIImage imageNamed:@"Lighthouse-night"],
//             [UIImage imageNamed:@"Lighthouse-zoomed"],
//             ];
//
//}//images








@end
