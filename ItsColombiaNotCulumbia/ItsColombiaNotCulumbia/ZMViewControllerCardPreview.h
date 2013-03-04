//
//  ZMViewControllerCardPreview.h
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/27/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMViewControllerLogin.h"
#import "ZMViewControllerFlipSide.h"
#import <FacebookSDK/FacebookSDK.h>


@interface ZMViewControllerCardPreview : UIViewController <FBLoginViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) UIImage *img;
@property (weak, nonatomic) ZMViewControllerFlipSide *mainController;
@property (weak, nonatomic) IBOutlet UIButton *btnPublishOnFacebook;
@property (strong, nonatomic) id<FBGraphUser> loggedInUser;
- (IBAction)publishOnFacebook:(id)sender;
@end
