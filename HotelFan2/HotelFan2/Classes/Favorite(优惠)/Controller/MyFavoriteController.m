//
//  MyFavoriteController.m
//  HotelFan2
//
//  Created by JayLi on 15-2-17.
//  Copyright (c) 2015年 com.jay. All rights reserved.
//

#import "MyFavoriteController.h"
#import "UIBarButtonItem+Extension.h"
#import "SAMSearchBar.h"

@interface MyFavoriteController ()

@end

@implementation MyFavoriteController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"kazhu_nav_search" highImage:@"kazhu_nav_search" target:self action:@selector(click) ];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"首页测试数据----%d", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *newVc = [[UIViewController alloc] init];
    newVc.view.backgroundColor = [UIColor redColor];
    newVc.title = @"新控制器";
    [self.navigationController pushViewController:newVc animated:YES];
}

- (void)click
{
    DEBUGLOG(@"CLICK");
//    MyFavoriteController *textVC = [[MyFavoriteController alloc]init];
//    textVC.view.backgroundColor = [UIColor blueColor];
//    [self.navigationController presentViewController:textVC animated:NO completion:nil];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"kazhu_nav_cancel" highImage:@"kazhu_nav_cancel" target:self action:@selector(cancle)];
    
    
    SAMSearchBar *serchView = [SAMSearchBar searchBar];
    serchView.height = 35;
    serchView.width = 270;
    self.navigationItem.titleView = serchView;
    
    //self.navigationIte.titleView = []
}

- (void)cancle
{
     self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"kazhu_nav_search" highImage:@"kazhu_nav_search" target:self action:@selector(click) ];
}
@end
