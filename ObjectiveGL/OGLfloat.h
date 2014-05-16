//
//  OGLfloat.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLGLPrimitive.h"

@interface OGLfloat : OGLGLPrimitive

@property (nonatomic, readwrite) GLfloat value;

- (instancetype)initWithValue:(GLfloat) g;
+(instancetype) get;

@end
