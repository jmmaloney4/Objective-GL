//
//  OGLchar.h
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OGLGLPrimitive.h"

@interface OGLchar : OGLGLPrimitive

@property (nonatomic, readwrite) GLchar value;

- (instancetype)initWithValue:(GLchar) g;
+(instancetype) get;

@end
