//
//  ZBouncingCheckmarkButton.h
//  BouncingCheckmark
//
//  Created by Jai Govindani on 4/16/13.
//  Copyright (c) 2013 com.zodio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBouncingCheckmarkButton : UIButton

+ (ZBouncingCheckmarkButton*)button;
+ (ZBouncingCheckmarkButton*)buttonWithActiveImage:(UIImage*)activeImage inactiveImage:(UIImage*)inactiveImage;
- (id)initWithActiveImage:(UIImage*)activeImage inactiveImage:(UIImage*)inactiveImage;
@end
