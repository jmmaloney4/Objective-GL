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

@property (nonatomic, readonly) GLFWwindow* window;
@property (nonatomic, readonly, strong) NSString* title;
@property (nonatomic, readonly) int width;
@property (nonatomic, readonly) int height;

@end
