//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Elie Hassan on 7/3/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite)int score;
@property (strong, nonatomic) NSString *flipResults;
@property (strong, nonatomic) NSMutableArray *cards;
@property (nonatomic) BOOL twoCardGame;
@end

@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (id)initWithCardCount:(NSUInteger)count
              usingDeck:(Deck *)deck
{
    self = [super init];
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (!card) {
                self = nil;
            } else {
                self.cards[i] = card;
            }
        }
    }
    
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < self.cards.count) ? self.cards[index] : nil;
}

#define FLIP_COST 1
#define MISMATCH_PENALTY 2
#define MATCH_BONUS 4

- (void)twoFlipCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    
    if (!card.unplayable)
    {
        if (!card.isFaceUp)
        {
            self.flipResults = [NSString stringWithFormat:@"Flipped up %@", card.contents];
            for (Card *otherCard in self.cards)
            {
                if (otherCard.isFaceUp && !otherCard.unplayable)
                {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        otherCard.unplayable = YES;
                        card.unplayable = YES;
                        self.score += matchScore * MATCH_BONUS;
                        self.flipResults = [NSString stringWithFormat:@"Matched %@ & %@ for %d points", card.contents, otherCard.contents, matchScore * MATCH_BONUS];
                    }
                    else
                    {
                        otherCard.faceUp = NO;
                        self.score -= MISMATCH_PENALTY;
                        self.flipResults = [NSString stringWithFormat:@"%@ and %@ don't match! %d point penalty!", card.contents, otherCard.contents, FLIP_COST];
                    }
                    break;
                }
            }
            self.score -= FLIP_COST;
        }
        card.faceUp = !card.isFaceUp;
    }
}

- (void)threeFlipCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    NSMutableArray *otherCards = [[NSMutableArray alloc] init];
    
    if (!card.unplayable)
    {
        if (!card.isFaceUp)
        {
            self.flipResults = [NSString stringWithFormat:@"Flipped up %@", card.contents];
            for (Card *otherCard in self.cards)
            {
                if (otherCard.isFaceUp && !otherCard.unplayable)
                {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore && [otherCards count] < 2)
                    {
                        [otherCards addObject:otherCard];
                    }
                    if (matchScore && [otherCards count] == 2)
                    {
                        matchScore = [card match:otherCards];
                        Card * secondCard = (Card *)[otherCards objectAtIndex:0];
                        Card * thirdCard = (Card *)[otherCards objectAtIndex:1];
                        secondCard.unplayable = YES;
                        thirdCard.unplayable = YES;
                        card.unplayable = YES;
                        self.score += matchScore * MATCH_BONUS;
                        self.flipResults = [NSString stringWithFormat:@"Matched %@ & %@ & %@ for %d points", card.contents, secondCard.contents, thirdCard.contents, matchScore * MATCH_BONUS];
                    }
                    if(!matchScore)
                    {
                        otherCard.faceUp = NO;
                        self.score -= MISMATCH_PENALTY;
                        self.flipResults = [NSString stringWithFormat:@"%@ and %@ don't match! %d point penalty!", card.contents, otherCard.contents, FLIP_COST];
                    }
                }
            }
            self.score -= FLIP_COST;
        }
        card.faceUp = !card.isFaceUp;
    }
}

@end
