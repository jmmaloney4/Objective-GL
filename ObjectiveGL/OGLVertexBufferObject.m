//
//  OGLVertexBufferObject.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLVertexBufferObject.h"

@interface OGLVertexBufferObject()

@property (nonatomic, readwrite) GLuint pointer;

@end

@implementation OGLVertexBufferObject

- (instancetype)initWithArray:(NSArray*) arr
{
    self = [super init];
    if (self) {
        GLuint ptr = self.pointer;
        glGenBuffers(1, &ptr);
    }
    return self;
}

@end
