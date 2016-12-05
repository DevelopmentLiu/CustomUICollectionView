//
//  CustomCollectionViewCell.h
//  CustomUICollectionView
//
//  Created by jyLiu on 2016/12/5.
//  Copyright © 2016年 JY_L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *classTime;
@property (weak, nonatomic) IBOutlet UILabel *priceLab;
@property (weak, nonatomic) IBOutlet UILabel *groupLab;
@property (weak, nonatomic) IBOutlet UIButton *goBtn;
@end
