//
//  RMDHomeViewController.m
//  EmotionTracker
//
//  Created by Rachel Dorn on 11/1/16.
//  Copyright © 2016 RachelDorn. All rights reserved.
//

#import "RMDHomeViewController.h"
#import "RMDCollectionViewCell.h"

@interface RMDHomeViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collection;
@property (nonatomic, strong) NSArray *emotionsArray;

@end

@implementation RMDHomeViewController

static NSString * const reuseIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
   // UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
   // [flowLayout setItemSize:CGSizeMake(self.view.frame.size.width / 2 - 5, self.view.frame.size.height / 5)];
   // [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
   // self.collection = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:flowLayout];
   // [self.view addSubview:self.collection];
  //
   // [self.collection registerClass:[RMDCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
  //  self.emotionsArray = @[@"happy", @"sad"];

}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.emotionsArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RMDCollectionViewCell *cell = (RMDCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            if (true) {
                cell.label.text = @"Meow";
            }
            break;
        case 1:
            if (true) {
                cell.label.text = @"Hisssss";
            }
            break;
        default:
            break;
    }
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
