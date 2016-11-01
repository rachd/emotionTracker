//
//  RMDCollectionViewCell.h
//  EmotionTracker
//
//  Created by Rachel Dorn on 10/31/16.
//  Copyright © 2016 RachelDorn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMDCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *label;

- (instancetype)initWithFrame:(CGRect)frame;

@end
