//
//  WavyLayout.m
//  WavyCollectionView
//
//  Created by Javier Xing on 2017-11-16.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
//    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *attribute in superAttrs) {
        CGFloat randomY = arc4random_uniform(self.collectionView.frame.size.height-26)+25;
        CGPoint randomCenter = CGPointMake(attribute.frame.origin.x+50, randomY);
//        CGSize randomSize = CGSizeMake(100, randomY*0.5);
//        attribute.size = randomSize;
//        self.minimumInteritemSpacing = CGFLOAT_MAX;
        
        attribute.center = randomCenter;
        
        [newAttrs addObject:attribute];
    }
    
    
    // Need to copy attrs from super to avoid cached frame mismatch
    return newAttrs;

}


@end
