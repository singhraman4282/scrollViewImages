//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) NSArray *images;
@property (nonatomic) UIImage *senderImage;
@property (nonatomic) UIImage *image1;
@property (nonatomic) UIImage *image2;
@property (nonatomic) UIImage *image3;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *thisImage = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:thisImage];
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.image1 = thisImage;
    [self.scrollView addSubview:imageView];
    
    thisImage = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:thisImage];
     frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView2.frame = frame;
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    [self.scrollView addSubview:imageView2];
    self.image2 = thisImage;
    
    thisImage = [UIImage imageNamed:@"Lighthouse.jpg"];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:thisImage];
    frame = CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView3.frame = frame;
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    self.image3 = thisImage;
    [self.scrollView addSubview:imageView3];
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
    
    self.scrollView.pagingEnabled = YES;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped2:)];
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped3:)];
    tap.numberOfTouchesRequired = 1;
    tap.numberOfTapsRequired = 1;
    
    tap2.numberOfTouchesRequired = 1;
    tap2.numberOfTapsRequired = 1;
    
    tap3.numberOfTouchesRequired = 1;
    tap3.numberOfTapsRequired = 1;
    
    
    imageView.userInteractionEnabled = YES;
    imageView2.userInteractionEnabled = YES;
    imageView3.userInteractionEnabled = YES;
    
    

    [imageView addGestureRecognizer:tap];
    [imageView2 addGestureRecognizer:tap2];
    [imageView3 addGestureRecognizer:tap3];
    
    
    
}//load


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{if ([[segue identifier] isEqualToString:@"1"])
    {
        DetailViewController *vc = [segue destinationViewController];
        
        vc.image = self.senderImage;
    }
}



-(void)imageTapped:(UITapGestureRecognizer *)sender {
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
    
        self.senderImage = self.image1;
    }
    [self performSegueWithIdentifier:@"1" sender:self];

}//imageTapped:

-(void)imageTapped2:(UITapGestureRecognizer *)sender {
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        self.senderImage = self.image2;
        
    }
    
    
        [self performSegueWithIdentifier:@"1" sender:self];
    //    NSLog(@"tapped");
}//imageTapped:

-(void)imageTapped3:(UITapGestureRecognizer *)sender {
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        self.senderImage = self.image3;
        [self performSegueWithIdentifier:@"1" sender:self];
    }
    
    
    
    //    NSLog(@"tapped");
}//imageTapped:








@end
