// Objective-GL, An Objective-C wrapper library for Open-GL and GLFW
// Copyright (c) 2014 Jack Maloney
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

#import <Foundation/Foundation.h>

@interface OGLFPSTimeController : NSObject

long getTime();

/** a temporary location for FPS being calculated, not actual FPS */
@property (nonatomic, readonly) int tmpFPS;

/** The current FPS */
@property (nonatomic, readonly) int currentFPS;

/** the value of getTime() the last time FPS were calculated */
@property (nonatomic, readonly) long timeLastFPS;

/** the value of getTime() last frame */
@property (nonatomic, readonly) long timeLastFrame;

-(void) frame;

@end
