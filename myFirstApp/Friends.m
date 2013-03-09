//
//  Friends.m
//  myFirstApp
//
//  Created by John Tumminaro on 3/9/13.
//  Copyright (c) 2013 John Tumminaro. All rights reserved.
//

#import "Friends.h"

@implementation Friends

@synthesize dateCreated;

- (id)init
{
    self = [super init];
    
    if (self) {
        
        self.name = @"Placeholder";
        self.age = 10;
        self.email = @"john@doe.com";
        dateCreated = [NSDate date];
    }
    
    return self;
}

- (void)doSomethingAwesome
{
    NSLog(@"Friends name is %@", self.name);
    NSLog(@"He is %d years old", self.age);
    NSLog(@"He has an email address of %@", self.email);    
}

@end
