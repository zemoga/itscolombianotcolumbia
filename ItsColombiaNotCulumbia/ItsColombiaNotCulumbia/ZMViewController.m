//
//  ZMViewController.m
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/26/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import "ZMViewController.h"
#import "ZMViewControllerFlipSide.h"

@interface ZMViewController ()

@end

@implementation ZMViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"readyToEdition"])
    {
        ZMViewControllerFlipSide *flipSide = (ZMViewControllerFlipSide *)[segue destinationViewController];
        flipSide.mainController = self;
        flipSide.img = self.image.image;
    }
}


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage * image = [info objectForKey:@"UIImagePickerControllerEditedImage"];
    self.image.contentMode = UIViewContentModeScaleAspectFit;
    self.image.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}


/**
 * @private
 * @param BOOL isCamera
 * Shows the library or the Camera controller
 **/
-(void) showLibraryCameraOnViewController:(BOOL)isCamera
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    if(isCamera) {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else {
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    picker.allowsEditing = YES;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:nil];
}



- (IBAction)cameraSelected:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [self showLibraryCameraOnViewController:YES];
    }
}


- (IBAction)librarySelected:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
         [self showLibraryCameraOnViewController:NO];
    }
}

@end
