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

#import "OGLFPSTimeController.h"
#import <mach/mach.h>

@interface OGLFPSTimeController ()

@property (nonatomic, readwrite) int tmpFPS;
@property (nonatomic, readwrite) int currentFPS;
@property (nonatomic, readwrite) long timeLastFPS;
@property (nonatomic, readwrite) long timeLastFrame;

@end

@implementation OGLFPSTimeController

static mach_timebase_info_data_t sTimebaseInfo;

long getTime() {
    long time = mach_absolute_time();
    if (sTimebaseInfo.denom == 0 )
    {
        (void) mach_timebase_info(&sTimebaseInfo);
    }
    long millis = ((time / 1000000) * sTimebaseInfo.numer) / sTimebaseInfo.denom;
    return millis;
}

- (instancetype) init {
    self = [super init];
    if (self) {
        self.currentFPS = 60;
        self.timeLastFPS = getTime();
    }
    return self;
}

/** Gets the delta, or time since the last frame */
-(long) getDelta {
    return (getTime() - self.timeLastFrame);
}

/** called every frame to calculate FPS */
-(void) frame {
    if (getTime() - self.timeLastFPS > 500) {
        self.currentFPS = self.tmpFPS * 2;
        self.tmpFPS = 0;
        self.timeLastFPS += 500;
    }
    self.tmpFPS++;

    //Log(@"Frame at %li", getTime());

    self.timeLastFrame = getTime();
}

-(int) getFPS {
    return self.currentFPS;
}

@end
