//
//  OGLApp.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

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
