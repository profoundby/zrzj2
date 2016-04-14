//
//  LoginViewController.m
//  zrzj
//
//  Created by baoyuan on 16/4/13.
//  Copyright © 2016年 baoyuan. All rights reserved.
//

#import "LoginViewController.h"
#import "HyTransitions.h"
#import "HyLoglnButton.h"
#import "MainTabBarViewController.h"

@interface LoginViewController ()<UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UISwitch *Switch;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPresentControllerButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createPresentControllerButton{
    
    HyLoglnButton *log = [[HyLoglnButton alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 80), [UIScreen mainScreen].bounds.size.width - 40, 40)];
    [log setBackgroundColor:[UIColor colorWithRed:1 green:0.f/255.0f blue:128.0f/255.0f alpha:1]];
    [self.view addSubview:log];
    [log setTitle:@"登录" forState:UIControlStateNormal];
    [log addTarget:self action:@selector(PresentViewController:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)PresentViewController:(HyLoglnButton *)button{
    
    typeof(self) __weak weak = self;
    //模拟网络访问
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weak LoginButton:button];
    });
}

-(void)LoginButton:(HyLoglnButton *)button
{
    typeof(self) __weak weak = self;
    if (_Switch.on) {
        //网络正常 或者是密码账号正确跳转动画
        [button ExitAnimationCompletion:^{
            if (weak.Switch.on) {
                [weak didPresentControllerButtonTouch];
            }
        }];
    }else{
        //网络错误 或者是密码不正确还原动画
        [button ErrorRevertAnimationCompletion:^{
            if (weak.Switch.on) {
                [weak didPresentControllerButtonTouch];
            }
        }];
    }
}

- (void)didPresentControllerButtonTouch
{
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainTabBarViewController *main = [storyboard instantiateViewControllerWithIdentifier:@"maintabbar"];
    
    main.transitioningDelegate = self;
    
    [self presentViewController:main animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    
    return [[HyTransitions alloc]initWithTransitionDuration:0.4f StartingAlpha:0.5f isBOOL:true];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    
    return [[HyTransitions alloc]initWithTransitionDuration:0.4f StartingAlpha:0.8f isBOOL:false];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
