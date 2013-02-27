//
//  ZMViewControllerFlipSide.h
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/26/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMViewController.h"

@interface ZMViewControllerFlipSide : UIViewController
@property (weak, nonatomic) IBOutlet UIView *container;
@property (weak, nonatomic) UIImage *img;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) ZMViewController *mainController;
@end
