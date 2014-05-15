//
//  OGLuint.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLuint.h"

@implementation OGLuint

- (instancetype)initWithValue:(GLuint) g
{
    self = [super init];
    if (self) {
        self.value = g;
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.value = (GLuint) nil;
    }
    return self;
}

+(instancetype) get {
    return [[OGLuint alloc] init];
}

@end
