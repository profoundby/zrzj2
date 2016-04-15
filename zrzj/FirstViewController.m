//
//  FirstViewController.m
//  zrzj
//
//  Created by baoyuan on 16/4/9.
//  Copyright © 2016年 baoyuan. All rights reserved.
//

#import "FirstViewController.h"
#import "QrcodeViewController.h"
#import "PlantCollectionViewCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *attributes=[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil];
    [self.navigationController.navigationBar setTitleTextAttributes:attributes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)lanuchQrcode:(id)sender{
    QrcodeViewController *qrvc = [[QrcodeViewController alloc] init];
    [self.navigationController pushViewController:qrvc animated:YES];
};

//每个section的item个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    PlantCollectionViewCell *cell = (PlantCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"plantcell" forIndexPath:indexPath];
    
    //图片名称
    //NSString *imageToLoad = [NSString stringWithFormat:@"%d.png", indexPath.row];
    //加载图片
    //cell.plantImageView.image = [UIImage imageNamed:imageToLoad];
    //设置label文字
    cell.plantLabel.text = [NSString stringWithFormat:@"{%ld,%ld}",(long)indexPath.row,(long)indexPath.section];
    
    return cell;
}

@end
