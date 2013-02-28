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


- (IBAction)publishOnFacebook:(id)sender
{
    [self postPhotoToFaceBook:self.image.image];
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    NSLog(@"You are %@ ", user.first_name);
    self.loggedInUser = user;
}

/**
 * @private
 * Publish a the photo on the wall of the logged user
 **/
- (void)postPhotoToFaceBook:(UIImage *)image
{
    BOOL displayedNativeDialog = [FBNativeDialogs presentShareDialogModallyFrom:self initialText:nil image:image url:nil handler:nil];
    if (!displayedNativeDialog) {
        if ([FBSession.activeSession.permissions indexOfObject:@"publish_actions"] == NSNotFound) {
            [FBSession.activeSession requestNewPublishPermissions:@[@"publish_actions"] defaultAudience:FBSessionDefaultAudienceFriends completionHandler:^(FBSession *session, NSError *error) {
                if (!error) {
                    [self publishPhoto:image];
                }
            }];
        } else {
            [self publishPhoto:image];
        }
    }
}


-(void) publishPhoto:(UIImage *)image
{
    [FBRequestConnection startForUploadPhoto:image completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
        NSLog(@"Message Published %@", error);
    }];
}

@end
