//
//  FirstViewController.h
//  zrzj
//
//  Created by baoyuan on 16/4/9.
//  Copyright © 2016年 baoyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak,nonatomic) IBOutlet UIBarButtonItem *qrcodeBarButtonItem;
@property (weak,nonatomic) IBOutlet UICollectionView *plantCollectionView;

-(IBAction)lanuchQrcode:(id)sender;
@end

