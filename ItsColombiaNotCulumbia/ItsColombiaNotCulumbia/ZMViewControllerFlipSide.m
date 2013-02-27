//
//  ZMViewControllerFlipSide.m
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/26/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import "ZMViewControllerFlipSide.h"
#import "QuartzCore/QuartzCore.h"
#import "ZMViewControllerCardPreview.h"

@interface ZMViewControllerFlipSide ()

@end

@implementation ZMViewControllerFlipSide


- (IBAction)goBackAction:(id)sender
{
    [self.mainController dismissViewControllerAnimated:YES completion:nil];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"readyToPreview"])
    {
        ZMViewControllerCardPreview *preview = (ZMViewControllerCardPreview *)[segue destinationViewController];
        preview.mainController = self;
        preview.img = [self containerToImage];
    }
}


/**
 * Loads the referenced image on the ZMViewControllerFlipSide
 **/
-(void) viewDidLoad
{
    self.image.contentMode = UIViewContentModeScaleAspectFit;
    self.image.image = self.img;
}


/**
 * @private
 * This method copies all the data inside the container view on ZMViewControllerFlipSide 
 **/
-(UIImage *) containerToImage
{
    UIImage *screenShot;
    UIGraphicsBeginImageContext(self.container.frame.size);
    [[self.container layer] renderInContext:UIGraphicsGetCurrentContext()];
    screenShot = UIGraphicsGetImageFromCurrentImageContext();
    return screenShot;
}




@end
