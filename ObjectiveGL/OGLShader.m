//
//  OGLShader.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLShader.h"

@interface OGLShader ()

@property (nonatomic, readwrite, strong) NSString* contents;

@end

@implementation OGLShader

- (instancetype)init
{
    return nil;
}

- (instancetype)initWithFile:(NSString*) path
{
    self = [super init];
    if (self) {
        self = [self initWithContents:[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil]];
    }
    return self;
}

- (instancetype)initWithContents:(NSString*) contents
{
    self = [super init];
    if (self) {
        self.contents = contents;
    }
    return self;
}

@end
