//
//  ZMViewController.h
//  ItsColombiaNotCulumbia
//
//  Created by Sebastian Romero on 2/26/13.
//  Copyright (c) 2013 Zemoga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZMViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnCamera;
@property (weak, nonatomic) IBOutlet UIButton *btnLibrary;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
@end
