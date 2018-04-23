//
//  DetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *detailImage;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailImage.image = self.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
