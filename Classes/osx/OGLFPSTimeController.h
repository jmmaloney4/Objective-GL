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

@property (nonatomic, readonly) int tmpFPS;
@property (nonatomic, readonly) int currentFPS;
@property (nonatomic, readonly) long lastFPS;
@property (nonatomic, readonly) long timeLastFrame;

-(void) frame;

@end
