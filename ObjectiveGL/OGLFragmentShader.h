//
//  OGLFragmentShader.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLShader.h"

@interface OGLFragmentShader : OGLShader

-(instancetype) initWithContents:(NSString *)contents;
-(instancetype) initWithFile:(NSString *)path;

@end
