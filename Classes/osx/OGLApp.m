//
//  OGLApp.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLApp.h"

@interface OGLApp ()

@property (nonatomic, readwrite, strong) OGLFPSTimeController* fpstc;
@property (nonatomic, readwrite, strong) OGLDisplay* display;

@end

@implementation OGLApp

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fpstc = [[OGLFPSTimeController alloc] init];
        self.display = [[OGLDisplay alloc] init];
    }
    return self;
}

-(void) start {

    // Initalize OpenGL

    while (!glfwWindowShouldClose(self.display.window)) {
        [self loop];
        [self.fpstc frame];
    }
    [self Quit];
}

-(void) Quit {
    glfwDestroyWindow(self.display.window);
    glfwTerminate();
    exit(0);
}

//################################
//### Implement In Subclass ######
//################################

-(void) loop {
    // Implement in Subclass
}

-(void) keyCallback {
    // Implement in Subclass
}

-(void) mouseCallback {
    // Implement in Subclass
}

-(void) initalizeOpenGL {
    // Implement in Subclass
}

@end
