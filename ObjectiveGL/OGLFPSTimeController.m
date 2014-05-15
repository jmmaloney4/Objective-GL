//
//  OGLFPSTimeController.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLFPSTimeController.h"
#import <mach/mach.h>

@interface OGLFPSTimeController ()

@property (nonatomic, readwrite) int tmpFPS;
@property (nonatomic, readwrite) int currentFPS;
@property (nonatomic, readwrite) long lastFPS;
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
        self.lastFPS = getTime();
    }
    return self;
}

/** Gets the delta, or time since the last frame */
-(long) getDelta {
    return (getTime() - self.timeLastFrame);
}

/** called every frame to calculate FPS */
-(void) frame {
    if (getTime() - self.lastFPS > 500) {
        self.currentFPS = self.tmpFPS * 2;
        self.tmpFPS = 0;
        self.lastFPS += 500;
    }
    self.tmpFPS++;

    //Log(@"Frame at %li", getTime());

    self.timeLastFrame = getTime();
}

-(int) getFPS {
    return self.currentFPS;
}

@end
