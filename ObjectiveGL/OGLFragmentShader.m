//
//  OGLFragmentShader.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLFragmentShader.h"
#import "glfw3.h"

@implementation OGLFragmentShader

-(instancetype) initWithFile:(NSString *)path {
    self = [self initWithFile:path andType:GL_FRAGMENT_SHADER];
    return self;
}

-(instancetype) initWithContents:(NSString *)contents {
    self = [self initWithContents:contents andType:GL_FRAGMENT_SHADER];
    return self;
}

@end
