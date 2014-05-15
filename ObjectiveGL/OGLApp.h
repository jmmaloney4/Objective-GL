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

#import <Foundation/Foundation.h>
#import "OGLFPSTimeController.h"
#import "OGLDisplay.h"

// ABSTRACT CLASS, Cannot Be Instantiated
@interface OGLApp : NSObject

/** The OGLFPSTimeController instance for this OGLApp */
@property (nonatomic, readonly, strong) OGLFPSTimeController* fpstc;

/** The OGLDisplay instance for this OGLApp */
@property (nonatomic, readonly, strong) OGLDisplay* display;

/** Starts the app's loop, will block until app exits */
-(void) start;

/** Called in start at the begenning,
 used to run initalazation OpenGL code */
-(void) initalizeOpenGL;

//################################
//### Implement In Subclass ######
//################################

/** (Reimplement in Subclass) gets called every time the apps loop runs, put your OpenGL loop code here */
-(void) loop;

/** (Reimplement in Subclass) The key callback method, gets called every time the app loops */
-(void) keyCallback;

/** (Reimplement in Subclass) The mouse callback method, gets called every time the app loops */
-(void) mouseCallback;

@end
