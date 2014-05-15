//
//  OGLint.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OGLint : OGLGLPrimitive

@property (nonatomic, readwrite) GLint value;

- (instancetype)initWithValue:(GLint) g;
+(instancetype) get;

@end
