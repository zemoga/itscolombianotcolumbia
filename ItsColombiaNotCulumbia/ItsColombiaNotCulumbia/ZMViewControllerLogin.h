//
//  ZMViewControllerLogin.h
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/28/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ZMViewControllerLogin : UIViewController <FBLoginViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *viewFooter;
@property (strong, nonatomic) id<FBGraphUser> loggedInUser;
@property (strong, nonatomic) FBLoginView *loginview;
@end
