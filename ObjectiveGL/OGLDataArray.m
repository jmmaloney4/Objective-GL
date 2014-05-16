//
//  OGLDataArray.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/15/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLDataArray.h"

@interface OGLDataArray ()

@property (nonatomic, readwrite) void* data;
@property (nonatomic, readwrite) GLuint size;

@end

@implementation OGLDataArray

- (instancetype)initWithArray:(void*) arr ofSize:(GLuint) size
{
    self = [super init];
    if (self) {
        self.data = arr;
        self.size = size;
    }
    return self;
}

-(void) setDataArray:(void*) array ofSize:(GLuint) size {
    self.size = size;
    self.data = array;
}

@end
