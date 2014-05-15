//
//  OGDisplay.m
//  ObjectiveGL
//
//  Created by Jack Maloney on 5/14/14.
//  Copyright (c) 2014 IV. All rights reserved.
//

#import "OGLDisplay.h"

@interface OGLDisplay ()

@property (nonatomic, readwrite) GLFWwindow* window;
@property (nonatomic, readwrite, strong) NSString* title;
@property (nonatomic, readwrite) int width;
@property (nonatomic, readwrite) int height;

@end

@implementation OGLDisplay

- (instancetype)init
{
    return nil;
}

-(instancetype) initWithTitle:(NSString*) title Width:(int) width andHeight:(int) height {
    self = [super init];
    if (self) {
        self.title = title;
        self.height = height;
        self.width = width;
        self.window = glfwCreateWindow(self.width, self.height, [self.title UTF8String], NULL, NULL);
        glfwMakeContextCurrent(self.window);
    }
    return self;
}

@end
