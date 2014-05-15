//
//  OGLShader.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLShader.h"
#import "glfw3.h"

@interface OGLShader ()

@property (nonatomic, readwrite, strong) NSString* contents;
@property (nonatomic, readwrite) GLuint shader;

@end

@implementation OGLShader

- (instancetype)init
{
    return nil;
}

- (instancetype)initWithFile:(NSString*) path andType:(GLenum) type
{
    self = [super init];
    if (self) {
        self = [self initWithContents:[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil] andType:type];
    }
    return self;
}

- (instancetype)initWithContents:(NSString*) contents andType:(GLenum) type
{
    self = [super init];
    if (self) {
        self.contents = contents;
        self.shader = glCreateShader(type);

        const char* src = [self.contents UTF8String];
        glShaderSource(self.shader, 1, &src, NULL);

        // compile the shader
        glCompileShader(self.shader);

        // Check Compile Status
        GLint status;
        glGetShaderiv(self.shader, GL_COMPILE_STATUS, &status);
        if (status != GL_TRUE) {
            return nil;
        }

        // link the shader
        glLinkProgram(self.shader);

    }
    return self;
}

-(void) use {
    glUseProgram(self.shader);
}

@end
