//
//  OGLShaderProgram.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OGLShaderProgram : NSObject

@property (nonatomic, readonly, strong) NSArray* shaders;
@property (nonatomic, readonly) GLuint pointer;

@end
