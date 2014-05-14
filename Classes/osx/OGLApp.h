//
//  OGLApp.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>

// ABSTRACT CLASS, Cannot Be Instantiated
@interface OGLApp : NSObject

// Override this method in subclass, it gets called every time the apps loop runs
-(void) loop;

// Override this method in subclass, The key callback method, gets called every time the app loops
-(void) keyCallback;

// Override this method in subclass, The mouse callback method, gets called every time the app loops
-(void) mouseCallback;

// Starts the app's loop, will block until app exits
-(void) start;


@end
