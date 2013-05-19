//
//  ZBouncingCheckmarkButton.m
//  BouncingCheckmark
//
//  Created by Jai Govindani on 4/16/13.
//  Copyright (c) 2013 com.zodio. All rights reserved.
//

#import "ZBouncingCheckmarkButton.h"
#import <QuartzCore/QuartzCore.h>
#import "SKBounceAnimation.h"

#define ACTIVE_IMAGE @"Feed_LikeButton_Selected"
#define INACTIVE_IMAGE @"Feed_LikeButton"

@interface ZBouncingCheckmarkButton()
{
    UIImage *_activeImage;
    UIImage *_inactiveImage;
}

@property (strong, nonatomic) UIImage *activeImage;
@property (strong, nonatomic) UIImage *inactiveImage;

@end

@implementation ZBouncingCheckmarkButton


+ (ZBouncingCheckmarkButton*)button
{
    ZBouncingCheckmarkButton *button = [ZBouncingCheckmarkButton buttonWithType:UIButtonTypeCustom];
    [button setActiveImage:[UIImage imageNamed:ACTIVE_IMAGE]];
    [button setInactiveImage:[UIImage imageNamed:INACTIVE_IMAGE]];
    
    [button setBackgroundImage:button.inactiveImage forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 0, button.inactiveImage.size.width, button.inactiveImage.size.height)];
    
    [button addTarget:button action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:button action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [button addTarget:button action:@selector(buttonUpInside:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - Button Action Methods

- (void)buttonDown:(UIButton*)button
{
    //Scale posX, posY, width, height
    button.layer.bounds = button.bounds;
    
    NSString *scaleKeyPath = @"transform.scale";
    id finalScale = [NSNumber numberWithFloat:0.8f];
    
    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
    
    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
    scaleBounce.fromValue = [NSNumber numberWithFloat:1.0f];
    scaleBounce.toValue = finalScale;
    scaleBounce.duration = 0.2f;
    scaleBounce.numberOfBounces = 0;
    
    [button.layer addAnimation:scaleBounce forKey:@"shrink"];
}

- (void)buttonUp:(UIButton*)button
{
    NSString *scaleKeyPath = @"transform.scale";
    id finalScale = [NSNumber numberWithFloat:1.0f];
    NSLog(@"Current scale: %@", [button.layer valueForKeyPath:scaleKeyPath]);
    
    id originalScale = [button.layer valueForKeyPath:scaleKeyPath];
    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
    
    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
    scaleBounce.fromValue = originalScale;
    scaleBounce.toValue = finalScale;
    scaleBounce.duration = 0.2f;
    scaleBounce.numberOfBounces = 0;
    
    [button.layer addAnimation:scaleBounce forKey:@"expand"];
}

- (void)buttonUpInside:(UIButton*)button
{
    NSString *scaleKeyPath = @"transform.scale";
    id finalScale = [NSNumber numberWithFloat:1.0f];
    NSLog(@"Current scale: %@", [button.layer valueForKeyPath:scaleKeyPath]);
    
    id currentScale = [button.layer valueForKeyPath:scaleKeyPath];
    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
    
    
    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
    scaleBounce.fromValue = currentScale;
    scaleBounce.toValue = finalScale;
    scaleBounce.numberOfBounces = 1;
    scaleBounce.duration = 0.20f;
    scaleBounce.shouldOvershoot = YES;
    
    [button.layer addAnimation:scaleBounce forKey:@"expand"];
    
    if(button.tag)
    {
        [button setBackgroundImage:[UIImage imageNamed:INACTIVE_IMAGE] forState:UIControlStateNormal];
        button.tag = 0;
        
    }
    else
    {
        button.tag = 1;
        [button setBackgroundImage:[UIImage imageNamed:ACTIVE_IMAGE] forState:UIControlStateNormal];
        
    }
}

@end
