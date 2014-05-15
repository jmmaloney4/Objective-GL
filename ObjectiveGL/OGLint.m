//
//  OGLint.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLint.h"

@implementation OGLint

- (instancetype)initWithValue:(GLint) g
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
        self.value = (GLint) nil;
    }
    return self;
}

+(instancetype) get {
    return [[OGLint alloc] init];
}

@end
