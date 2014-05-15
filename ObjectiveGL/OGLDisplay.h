//
//  OGDisplay.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "glfw3.h"

@interface OGLDisplay : NSObject

/** The GLFWwindow that this display uses */
@property (nonatomic, readonly) GLFWwindow* window;

/** the window title */
@property (nonatomic, readonly, strong) NSString* title;

/** width of the window */
@property (nonatomic, readonly) int width;

/** height of the window */
@property (nonatomic, readonly) int height;

@end
