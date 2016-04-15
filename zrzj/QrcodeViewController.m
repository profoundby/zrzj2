//
//  QrcodeViewController.m
//  zrzj
//
//  Created by baoyuan on 16/4/15.
//  Copyright © 2016年 baoyuan. All rights reserved.
//

#import "QrcodeViewController.h"
#import "QRCScanner.h"

@interface QrcodeViewController ()<QRCodeScanneDelegate>

@end

@implementation QrcodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    QRCScanner *scanner = [[QRCScanner alloc]initQRCScannerWithView:self.view];
    scanner.delegate = self;
    [self.view addSubview:scanner];
    // Do any additional setup after loading the view.
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

- (void)didFinshedScanningQRCode:(NSString *)result{
    NSLog(@"%@",result);
}

@end
