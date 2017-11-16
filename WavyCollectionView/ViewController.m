//
//  ViewController.m
//  WavyCollectionView
//
//  Created by Javier Xing on 2017-11-16.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WavyFlowLayout *layout = [[WavyFlowLayout alloc]init];
    self.collectionView.collectionViewLayout = layout;
    self.collectionView.backgroundColor = [UIColor yellowColor];
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return  10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:1];
    label.text = [NSString stringWithFormat:@"%ld, %ld", indexPath.section, indexPath.item];
    
    return cell;
    
    
}




@end
