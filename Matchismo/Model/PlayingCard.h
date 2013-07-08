//
//  PlayingCard.h
//  Matchismo
//
//  Created by Elie Hassan on 7/2/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
