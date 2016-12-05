//
//  ViewController.m
//  CustomUICollectionView
//
//  Created by jyLiu on 2016/12/5.
//  Copyright © 2016年 JY_L. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"
#define SCREEN_W [UIScreen mainScreen].bounds.size.width
@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)UICollectionView *customCollection;
// minimumLineSpacing;//最小行间距
// minimumInteritemSpacing;//最小间距
// itemSize;//每个item统一尺寸
// scrollDirection;//默认滑动方向
// headerReferenceSize;//每一组头视图的尺寸
// footerReferenceSize;//每一组尾部视图的尺寸
// sectionInset;//每组的内容缩进
@end

@implementation ViewController
NSString *identifier = @"cell";
NSString *headerIdentifier = @"header";
- (void)viewDidLoad {
    [super viewDidLoad];

    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.minimumLineSpacing = 10;   //设置最小行间距
    layout.minimumInteritemSpacing = 10; //设置最小列间距
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;//滚动方向为垂直
    //创建滚动视图
    UICollectionView *collctionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    collctionView.backgroundColor = [UIColor whiteColor];
    collctionView.delegate = self;
    collctionView.dataSource = self;
    // 是否显示垂直方向指示标, 继承于UIScrollView, 他的方法可以调用
    collctionView.showsVerticalScrollIndicator = NO;
    //注册增补视图
    [collctionView registerNib:[UINib nibWithNibName:@"CustomCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:identifier];
    [self.view addSubview:collctionView];
}

#pragma mark -- delegate‘、datasource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    return  cell;
}
//定义每个item 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(135, 100);
}
//定义每个Section 的 margin
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(15, 15, 5, 15);//分别为上、左、下、右
}

@end
