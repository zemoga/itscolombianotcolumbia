//
//  ZMViewControllerLogin.m
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/28/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import "ZMViewControllerLogin.h"

@implementation ZMViewControllerLogin


-(void) viewDidLoad
{
    [super viewDidLoad];
    [self loadFaceBookButton];
}


-(void) loadFaceBookButton
{
    self.loginview = [[FBLoginView alloc] init];
    self.loginview.frame = CGRectOffset(self.loginview.frame, 160, 50);
    self.loginview.delegate = self;
    [self.viewFooter addSubview:self.loginview];
    [self.loginview sizeToFit];
}


#pragma mark - FBLoginViewDelegate

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    // first get the buttons set for login mode
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    NSLog(@"You are %@ ", user.first_name);
    self.loggedInUser = user;
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
{
    //BOOL canShareAnyhow = [FBNativeDialogs canPresentShareDialogWithSession:nil];
}

- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
{
    NSLog(@"FBLoginView encountered an error=%@", error);
}

@end

