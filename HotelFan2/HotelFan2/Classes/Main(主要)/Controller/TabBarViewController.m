//
//  TabBarViewController.m
//  HotelFan2
//
//  Created by JayLi on 15-2-17.
//  Copyright (c) 2015年 com.jay. All rights reserved.
//

#import "TabBarViewController.h"
#import "NavigationController.h"
#import "MyFavoriteVC.h"
#import "SearchCardVC.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tabBar.backgroundImage = [UIImage imageNamed:@"public_tab_bar_background_ios7"];
   
    MyFavoriteVC *vc1 = [[MyFavoriteVC alloc]init];
    [self addOneChildViewController:vc1 withTitle:@"优惠" imageName:@"public_tabbar_item1" selectImageName:@"public_tabbar_item1_sel"];
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    [self addOneChildViewController:vc2 withTitle:@"卡包" imageName:@"public_tabbar_item3" selectImageName:@"public_tabbar_item3_sel"];
    
    UIViewController *vc3 = [[UIViewController alloc]init];
    [self addOneChildViewController:vc3 withTitle:@"查询" imageName:@"public_tabbar_item6" selectImageName:@"public_tabbar_item6_sel"];
    
    UIViewController *vc4 = [[UIViewController alloc]init];
    [self addOneChildViewController:vc4 withTitle:@"我的" imageName:@"public_tabbar_item4" selectImageName:@"public_tabbar_item4_sel"];
   }


- (void)addOneChildViewController:(UIViewController *)oneVC withTitle:(NSString *)titleName imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName
{
    oneVC.view.backgroundColor = RandomColor;
    oneVC.title = titleName;
    oneVC.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectImage = [UIImage imageNamed:selectImageName];
   selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
   

    oneVC.tabBarItem.selectedImage = selectImage;
    
    NavigationController *nav = [[NavigationController alloc]initWithRootViewController:oneVC];
    [self addChildViewController:nav];

}



@end
