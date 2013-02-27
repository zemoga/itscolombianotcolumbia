//
//  ZMViewControllerCardPreview.m
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/27/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import "ZMViewControllerCardPreview.h"

@implementation ZMViewControllerCardPreview

/**
 * Loads the referenced image on the ZMViewControllerFlipSide
 **/
-(void) viewDidLoad
{
    self.image.contentMode = UIViewContentModeScaleAspectFit;
    self.image.image = self.img;
}

- (IBAction)backToEditAction:(id)sender
{
    [self.mainController dismissViewControllerAnimated:YES completion:nil];
}

@end
