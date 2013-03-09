//
//  main.m
//  myFirstApp
//
//  Created by John Tumminaro on 3/9/13.
//  Copyright (c) 2013 John Tumminaro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Friends.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Friends *firstFriend = [[Friends alloc] init];
        Friends *secondFriend = [[Friends alloc] init];
        Friends *thirdFriend = [[Friends alloc] init];
    
        firstFriend.name = @"John Bryant";
        firstFriend.email = @"john@doe.com";
        firstFriend.age = 28;
        
        secondFriend.name = @"Louis Tumminaro";
        secondFriend.email = @"lou@yahoo.com";
        secondFriend.age = 30;

        thirdFriend.name = @"Danielle Parmley";
        thirdFriend.email = @"dparms@gmail.com";
        thirdFriend.age = 30;
        
        [[FriendStore sharedStore] addFriendToStore:firstFriend];
        [[FriendStore sharedStore] addFriendToStore:secondFriend];
        [[FriendStore sharedStore] addFriendToStore:thirdFriend];
        
        NSArray *friends = [[FriendStore sharedStore] getListOfFriends];
        
        NSLog(@"You have %lu friends", friends.count);
        
        for (int i = 0; i < friends.count; i++) {
            Friends *currentFriend = [friends objectAtIndex:i];
            NSLog(@"This friends name is %@", currentFriend.name);
        }
        
    }
    return 0;
}

