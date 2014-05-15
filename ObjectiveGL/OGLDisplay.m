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

#import "OGLDisplay.h"

@interface OGLDisplay ()

@property (nonatomic, readwrite) GLFWwindow* window;
@property (nonatomic, readwrite, strong) NSString* title;
@property (nonatomic, readwrite) int width;
@property (nonatomic, readwrite) int height;

@end

@implementation OGLDisplay

- (instancetype)init
{
    return nil;
}

-(instancetype) initWithTitle:(NSString*) title Width:(int) width andHeight:(int) height {
    self = [super init];
    if (self) {
        self.title = title;
        self.height = height;
        self.width = width;
        self.window = glfwCreateWindow(self.width, self.height, [self.title UTF8String], NULL, NULL);
        glfwMakeContextCurrent(self.window);
    }
    clock();
    return self;
}

@end
