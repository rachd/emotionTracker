//
//  RMDCollectionViewCell.m
//  EmotionTracker
//
//  Created by Rachel Dorn on 10/31/16.
//  Copyright © 2016 RachelDorn. All rights reserved.
//

#import "RMDCollectionViewCell.h"

@implementation RMDCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView setBackgroundColor:[UIColor blueColor]];
        
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.bounds.size.width - 20, self.bounds.size.height - 20)];
        self.label.textColor = [UIColor whiteColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.numberOfLines = 0;
        self.label.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:self.label];
    }
    return self;
}

@end
