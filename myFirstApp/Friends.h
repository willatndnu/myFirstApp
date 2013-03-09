//
//  Friends.h
//  myFirstApp
//
//  Created by John Tumminaro on 3/9/13.
//  Copyright (c) 2013 John Tumminaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friends : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;
@property (nonatomic) int age;
@property (nonatomic, readonly) NSDate *dateCreated;

- (void)doSomethingAwesome;

@end
