//
//  OGLFPSTimeController.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

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
