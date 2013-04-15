//
//  ZViewController.m
//  BouncingCheckmark
//
//  Created by Jai Govindani on 4/16/13.
//  Copyright (c) 2013 com.zodio. All rights reserved.
//

#import "ZViewController.h"
#import "SKBounceAnimation.h"
#import "ZBouncingCheckmarkButton.h"

@interface ZViewController ()
{
    UIImage *_activeImage;
    UIImage *_inactiveImage;
}

@property (strong, nonatomic) UIImage *activeImage;
@property (strong, nonatomic) UIImage *inactiveImage;

@end

@implementation ZViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *background = [UIImage imageNamed:@"Message_Checking_outline"];
//    [button setBackgroundImage:background forState:UIControlStateNormal];
//    
//    [button setFrame:CGRectMake(50, 50, 20, 20)];
//    [self.view addSubview:button];
//    
//    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
//    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
//    [button addTarget:self action:@selector(buttonUpInside:) forControlEvents:UIControlEventTouchUpInside];
    
    ZBouncingCheckmarkButton *button = [ZBouncingCheckmarkButton button];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)buttonDown:(UIButton*)button
//{
//    //Scale posX, posY, width, height
//    button.layer.bounds = button.bounds;
//
//    NSString *scaleKeyPath = @"transform.scale";
//    id finalScale = [NSNumber numberWithFloat:0.8f];
//
//    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
//
//    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
//    scaleBounce.fromValue = [NSNumber numberWithFloat:1.0f];
//    scaleBounce.toValue = finalScale;
//    scaleBounce.duration = 0.2f;
//    scaleBounce.numberOfBounces = 0;
//    
//    [button.layer addAnimation:scaleBounce forKey:@"shrink"];
//}
//
//- (void)buttonUp:(UIButton*)button
//{    
//    NSString *scaleKeyPath = @"transform.scale";
//    id finalScale = [NSNumber numberWithFloat:1.0f];
//    NSLog(@"Current scale: %@", [button.layer valueForKeyPath:scaleKeyPath]);
//
//    id originalScale = [button.layer valueForKeyPath:scaleKeyPath];
//    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
//    
//    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
//    scaleBounce.fromValue = originalScale;
//    scaleBounce.toValue = finalScale;
//    scaleBounce.duration = 0.2f;
//    scaleBounce.numberOfBounces = 0;
//    
//    [button.layer addAnimation:scaleBounce forKey:@"expand"];
//}
//
//- (void)buttonUpInside:(UIButton*)button
//{
//    NSString *scaleKeyPath = @"transform.scale";
//    id finalScale = [NSNumber numberWithFloat:1.0f];
//    NSLog(@"Current scale: %@", [button.layer valueForKeyPath:scaleKeyPath]);
//    
//    id currentScale = [button.layer valueForKeyPath:scaleKeyPath];
//    [button.layer setValue:finalScale forKeyPath:scaleKeyPath];
//    
//    
//    SKBounceAnimation *scaleBounce = [SKBounceAnimation animationWithKeyPath:scaleKeyPath];
//    scaleBounce.fromValue = currentScale;
//    scaleBounce.toValue = finalScale;
//    scaleBounce.numberOfBounces = 1;
//    scaleBounce.duration = 0.20f;
//    scaleBounce.shouldOvershoot = YES;
//
//    [button.layer addAnimation:scaleBounce forKey:@"expand"];
//    
//    if(button.tag)
//    {
//        [button setBackgroundImage:[UIImage imageNamed:@"Message_Checking_outline"] forState:UIControlStateNormal];
//        button.tag = 0;
//        
//    }
//    else
//    {
//        button.tag = 1;
//        [button setBackgroundImage:[UIImage imageNamed:@"Message_Checking"] forState:UIControlStateNormal];
//        
//    }
//}

@end
