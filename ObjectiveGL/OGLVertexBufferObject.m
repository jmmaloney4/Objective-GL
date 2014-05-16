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
@property (nonatomic, readwrite, strong) OGLDataArray* data;

@end

@implementation OGLVertexBufferObject

- (instancetype)initWithArray:(void*) arr ofSize:(GLuint) size
{
    self = [super init];
    if (self) {
        GLuint ptr = self.pointer;
        glGenBuffers(1, &ptr);
        self.data = [[OGLDataArray alloc] initWithArray:arr ofSize:size];
    }
    return self;
}

-(void) bind {
    glBindBuffer(GL_ARRAY_BUFFER, self.pointer);
}

-(void) uploadWithUsage:(GLenum) usage {
    glBufferData(GL_ARRAY_BUFFER, self.data.size, self.data.data, usage);
}

-(void) bindAndUploadWithUsage:(GLenum) usage {
    [self bind];
    [self uploadWithUsage:usage];
}

@end
