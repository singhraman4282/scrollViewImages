//
//  PinchAndZoomViewController.m
//  ScrollViewImageGalleries
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "PinchAndZoomViewController.h"

@interface PinchAndZoomViewController () 
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PinchAndZoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.minimumZoomScale = 0.25;
    self.scrollView.maximumZoomScale = 2.4;
    
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}


@end
