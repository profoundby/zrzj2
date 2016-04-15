//
//  FirstViewController.m
//  zrzj
//
//  Created by baoyuan on 16/4/9.
//  Copyright © 2016年 baoyuan. All rights reserved.
//

#import "FirstViewController.h"
#import "QrcodeViewController.h"

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

@end
