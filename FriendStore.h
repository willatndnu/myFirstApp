//
//  FriendStore.h
//  myFirstApp
//
//  Created by John Tumminaro on 3/9/13.
//  Copyright (c) 2013 John Tumminaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Friends;

@interface FriendStore : NSObject
{
    NSMutableArray *friendList;
}

+ (FriendStore *)sharedStore;

- (NSArray *)getListOfFriends;
- (void)addFriendToStore:(Friends *)friendToAdd;

@end
