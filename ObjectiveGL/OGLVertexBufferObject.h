//
//  OGLVertexBufferObject.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OGLVertexBufferObject : NSObject

@property (nonatomic, readonly) GLuint pointer;

@property (nonatomic, readonly, strong) OGLDataArray* data;

- (instancetype)initWithArray:(void*) arr ofSize:(GLuint) size;

-(void) uploadWithUsage:(GLenum) usage;
-(void) bind;
-(void) bindAndUploadWithUsage:(GLenum) usage;

@end
