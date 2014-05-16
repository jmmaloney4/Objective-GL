//
//  OGLfloat.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLfloat.h"

@implementation OGLfloat

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.value = (char) nil;
    }
    return self;
}

- (instancetype)initWithValue:(GLfloat)g
{
    self = [super init];
    if (self) {
        self.value = g;
    }
    return self;
}

+(instancetype) get {
    return [[OGLfloat alloc] init];
}

@end
