//
//  ZMViewControllerCardPreview.h
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/27/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMViewControllerFlipSide.h"

@interface ZMViewControllerCardPreview : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) UIImage *img;
@property (weak, nonatomic) ZMViewControllerFlipSide *mainController;
@end
