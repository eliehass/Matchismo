//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Elie Hassan on 7/3/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (id)initWithCardCount:(NSUInteger)cardCount
              usingDeck:(Deck *)deck;

- (void)twoFlipCardAtIndex:(NSUInteger)index;

- (void)threeFlipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) int score;
@property (strong, nonatomic, readonly) NSString *flipResults;

@end
