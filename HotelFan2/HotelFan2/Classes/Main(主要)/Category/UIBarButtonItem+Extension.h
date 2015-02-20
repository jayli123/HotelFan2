//
//  UIBarButtonItem+Extension.h
//  HotelFan2
//
//  Created by JayLi on 15-2-17.
//  Copyright (c) 2015年 com.jay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
