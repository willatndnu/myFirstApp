//
//  FriendStore.m
//  myFirstApp
//
//  Created by John Tumminaro on 3/9/13.
//  Copyright (c) 2013 John Tumminaro. All rights reserved.
//

#import "FriendStore.h"

@implementation FriendStore

+ (FriendStore *)sharedStore
{
    static FriendStore *_sharedStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedStore = [[FriendStore alloc] init];
    });
    
    return _sharedStore;
}

- (id)init
{
    self = [super init];
    
    if (!self) {
        return nil;
    }
    
    friendList = [NSMutableArray new];
    
    return self;
}

- (NSArray *)getListOfFriends
{
    return friendList;
}

- (void)addFriendToStore:(Friends *)friendToAdd
{
    [friendList addObject:friendToAdd];
}


@end
