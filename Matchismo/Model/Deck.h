//
//  Deck.h
//  Matchismo
//
//  Created by Elie Hassan on 7/2/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;

-(Card *)drawRandomCard;

@end
