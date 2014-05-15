//
//  OGLShader.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OGLShader : NSObject

/** the text containing the shader code */
@property (nonatomic, readonly, strong) NSString* contents;

/** the opengl shader representation */
@property (nonatomic, readonly) GLuint shader;

- (instancetype)initWithFile:(NSString*) path andType:(GLenum) type;

- (instancetype)initWithContents:(NSString*) contents andType:(GLenum) type;

-(void) use;

@end
