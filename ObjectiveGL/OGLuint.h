//
//  OGLuint.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "glfw3.h"

@interface OGLuint : OGLGLPrimitive

@property (nonatomic, readwrite) GLuint value;

- (instancetype)initWithValue:(GLuint) g;
+(instancetype) get;

@end
