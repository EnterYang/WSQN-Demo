//
//  YQXTabBarViewController.m
//  WSQN
//
//  Created by yangqingxu on 16/1/20.
//  Copyright © 2016年 yangqingxu. All rights reserved.
//

#import "YQXTabBarViewController.h"

@interface YQXTabBarViewController ()

@end

@implementation YQXTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.tintColor = [UIColor colorWithRed:255.0/255.0 green:124.0/255.0 blue:56.0/255.0 alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)setupChildViewController:(UIViewController *)childVc imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    // 设置选中的图标
    
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    
    childVc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}
@end
