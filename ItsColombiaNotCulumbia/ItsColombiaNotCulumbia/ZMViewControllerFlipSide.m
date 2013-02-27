//
//  ZMViewControllerFlipSide.m
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/26/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import "ZMViewControllerFlipSide.h"

@interface ZMViewControllerFlipSide ()

@end

@implementation ZMViewControllerFlipSide

- (IBAction)goBackAction:(id)sender
{
    
    [self.mainController dismissViewControllerAnimated:YES completion:nil];
}


-(void) setImageOutlet:(UIImage *)image
{
    NSLog(@"juas %@", image);
    self.image.contentMode = UIViewContentModeScaleAspectFit;
    self.image.image = self.img;
}


@end
