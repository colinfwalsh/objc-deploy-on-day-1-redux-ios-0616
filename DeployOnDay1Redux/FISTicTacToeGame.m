//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame


-(instancetype)init
{

    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        
        _board = [[NSMutableArray alloc]init];
        NSMutableArray *row = [NSMutableArray arrayWithObjects:@"", @"", @"", nil];
        NSMutableArray *row1 = [NSMutableArray arrayWithObjects:@"", @"", @"", nil];
        NSMutableArray *row2 = [NSMutableArray arrayWithObjects:@"", @"", @"", nil];
        

        _board = [NSMutableArray arrayWithObjects:row, row1, row2, nil];
        
        NSLog(@"%@", _board);
    }

    return self;
}

-(void)resetBoard
{   [self init];}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return _board[column][row];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    if([[self playerAtColumn:column row:row] length] == 0){
        return YES;
    }
    else{
        return NO;
    }
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{   if([self canPlayAtColumn:column row:row]){
        _board[column][row] = @"X";
    }
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{   if([self canPlayAtColumn:column row:row]){
        _board[column][row] = @"O";
}

}

-(NSString *)winningPlayer
{
    NSString* one = _board[0][0];
    NSString* two = _board[1][0];
    NSString* three = _board[2][0];
    NSString* four = _board[0][1];
    NSString* five = _board[1][1];
    NSString* six = _board[2][1];
    NSString* seven = _board[0][2];
    NSString* eight = _board[1][2];
    NSString* nine = _board[2][2];
   
    if ([one isEqualToString:two] && [two isEqualToString:three]) {
        if ([self canPlayAtColumn:0 row:0] == false) {
            return one;
        }
        else {
            return @"";}
    }
    
    else if([four isEqualToString:five] && [five isEqualToString:six]){
        if ([self canPlayAtColumn:0 row:1] == false) {
            return four;
        }
         else {
         return @"";}
    }
    
    else if([seven isEqualToString:eight] && [eight isEqualToString:nine]){
        if ([self canPlayAtColumn:0 row:2] == false) {
            return seven;
        }
         else {
         return @"";}
    }
    
    else if([one isEqualToString:four] && [four isEqualToString:seven]){
        if ([self canPlayAtColumn:0 row:0] == false) {
            return one;
        }
         else {
         return @"";}
    }
    
    else if([two isEqualToString:five] && [five isEqualToString:eight]){
        if ([self canPlayAtColumn:1 row:0] == false) {
            return two;
        }
        else {
         return @"";}
    }
    
    else if([three isEqualToString:six] && [six isEqualToString:nine]){
        if ([self canPlayAtColumn:2 row:0] == false) {
            return three;
        }
         else {
         return @"";}
    }
    
    else if([one isEqualToString:five] && [five isEqualToString:nine]){
        if ([self canPlayAtColumn:0 row:0] == false) {
            return one;
        }
        else {
         return @"";}
    }
    
    else if([three isEqualToString:five] && [five isEqualToString:seven]){
        if ([self canPlayAtColumn:2 row:0] == false) {
            return three;
        }
         else {
         return @"";}
    }
    
     else {
        return @"";}
}

-(BOOL)isADraw
{
    if (([self canPlayAtColumn:0 row:0] == false) && ([self canPlayAtColumn:0 row:1] == false) && ([self canPlayAtColumn:0 row:2] == false) && ([self canPlayAtColumn:1 row:0] == false) && ([self canPlayAtColumn:1 row:1] == false) && ([self canPlayAtColumn:2 row:1] == false) && ([self canPlayAtColumn:0 row:2] == false) && ([self canPlayAtColumn:1 row:2] == false) && ([self canPlayAtColumn:2 row:2] == false)){
        return YES;}
    else {
        return NO;}
}

@end
