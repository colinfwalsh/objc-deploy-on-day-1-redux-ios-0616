//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
    
    NSUInteger randomRow = arc4random_uniform(2);
    NSUInteger randomColumn = arc4random_uniform(2);
    
    if ([self.game canPlayAtColumn:randomColumn row:randomRow] == false) {
        while ([self.game canPlayAtColumn:randomColumn row:randomRow] == false) {
            randomRow = arc4random_uniform(2);
            randomColumn = arc4random_uniform(2);
        }
    }
    else {
        return FISTicTacToePositionMake(randomColumn, randomRow);
    }
}

@end
