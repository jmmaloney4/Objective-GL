// Objective-GL, An Objective-C wrapper library for Open-GL and GLFW
// Copyright (c) 2014 Jack Maloney <jmmaloney4@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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
    }
    return self;
}

-(void) use {
    glUseProgram(self.shader);
}

@end
