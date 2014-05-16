//
//  OGLDataArray.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OGLDataArray : NSObject

@property (nonatomic, readonly) void* data;
@property (nonatomic, readonly) GLuint size;

-(void) setDataArray:(void*) array ofSize:(GLuint) size;
- (instancetype)initWithArray:(void*) arr ofSize:(GLuint) size;

@end
