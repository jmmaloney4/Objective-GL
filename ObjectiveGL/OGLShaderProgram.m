//
//  OGLShaderProgram.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLShaderProgram.h"

@interface OGLShaderProgram ()

@property (nonatomic, readwrite, strong) NSArray* shaders;
@property (nonatomic, readwrite) GLuint pointer;

@end

@implementation OGLShaderProgram

- (instancetype)initWithShaders:(NSArray*) shaders
{
    self = [super init];
    if (self) {
        self.shaders = shaders;
        self.pointer = glCreateProgram();
        [self attachShaders];
    }
    return self;
}

-(void) attachShaders {
    for (int a = 0; a < self.shaders.count; a++) {
        if ([self.shaders[a] isKindOfClass:[OGLShader class]]) {
            glAttachShader(self.pointer, ((OGLShader*) self.shaders[a]).shader);
        } else {
            return;
        }
    }
}

-(void) link {
    glLinkProgram(self.pointer);
}

-(void) use {
    glUseProgram(self.pointer);
}

@end
