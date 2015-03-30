//
//  SAMSearchBar.m
//  HotelFan2
//
//  Created by JayLi on 15-3-3.
//  Copyright (c) 2015年 com.jay. All rights reserved.
//

#import "SAMSearchBar.h"

@implementation SAMSearchBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIImage *searchImage = [UIImage imageNamed:@"kazhu_search_field_bg"];
        [searchImage stretchableImageWithLeftCapWidth:searchImage.size.width*0.5 topCapHeight:searchImage.size.height*0.5];
        self.background = searchImage;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        
        UIImageView *leftView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"kazhu_searchIcon_new"]];
        leftView.width = leftView.image.size.width +20;
        leftView.height = leftView.image.size.height;
        leftView.contentMode = UIViewContentModeCenter;
        self.leftView = leftView;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.clearButtonMode =UITextFieldViewModeAlways;
        self.text= @"搜你喜欢";
    }
    return self;
}


+(instancetype)searchBar
{
    
    return [[self alloc]init];
}
@end
