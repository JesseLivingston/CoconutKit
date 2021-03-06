//
//  UITabBarController+HLSExtensions.h
//  CoconutKit
//
//  Created by Samuel Défago on 10/16/12.
//  Copyright (c) 2012 Samuel Défago. All rights reserved.
//

#import "HLSAutorotation.h"

@interface UITabBarController (HLSExtensions)

/**
 * Set how a tab bar controller decides whether it must rotate or not
 *
 * HLSAutorotationModeContainer: The original UIKit behavior is used
 * HLSAutorotationModeContainerAndNoChildren: No children decide whether rotation occur, and none receive the
 *                                            related events
 * HLSAutorotationModeContainerAndTopChildren
 * HLSAutorotationModeContainerAndAllChildren: The child view controllers decide whether rotation can occur, and receive
 *                                             the related events
 *
 * The default value is HLSAutorotationModeContainer
 */
@property (nonatomic, assign) HLSAutorotationMode autorotationMode;

@end
