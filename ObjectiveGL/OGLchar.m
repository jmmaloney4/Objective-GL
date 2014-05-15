//
//  OGLchar.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLchar.h"

@implementation OGLchar

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.value = (char) nil;
    }
    return self;
}

- (instancetype)initWithValue:(GLchar)g
{
    self = [super init];
    if (self) {
        self.value = g;
    }
    return self;
}

+(instancetype) get {
    return [[OGLchar alloc] init];
}

@end
