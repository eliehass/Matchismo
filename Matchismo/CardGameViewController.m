//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Elie Hassan on 7/2/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"
#import "PlayingCard.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) NSUInteger flipCount;
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gameSelector;

@end

@implementation CardGameViewController

- (CardMatchingGame *)game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    return _game;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    [self updateUI];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setBackgroundImage:[UIImage imageNamed:@"playing-card-back.jpg"] forState:UIControlStateNormal];
        
        //clubs
        if ([card.contents isEqualToString:@"2♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"3♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"4♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"5♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"6♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"7♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"8♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"9♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"10♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"J♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"Q♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"K♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"A♣"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_clubs.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_clubs.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        
        //spades
        else if ([card.contents isEqualToString:@"2♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"3♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"4♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"5♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"6♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"7♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"8♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"9♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"10♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"J♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"Q♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"K♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"A♠"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_spades.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_spades.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        
        //hearts
        else if ([card.contents isEqualToString:@"2♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"3♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"4♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"5♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"6♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"7♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"8♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"9♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"10♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"J♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"Q♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"K♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"A♥"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_hearts.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_hearts.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        
        //daimonds
        else if ([card.contents isEqualToString:@"2♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"2_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"3♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"3_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"4♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"4_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"5♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"5_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"6♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"6_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"7♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"7_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"8♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"8_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"9♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"9_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"10♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"10_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"J♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"jack_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"Q♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"queen_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"K♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"king_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        else if ([card.contents isEqualToString:@"A♦"])
        {
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_diamonds.png"] forState:UIControlStateSelected];
            [cardButton setBackgroundImage:[UIImage imageNamed:@"ace_of_diamonds.png"] forState:UIControlStateSelected | UIControlStateDisabled];
        }
        
        //[cardButton setTitle:card.contents forState:UIControlStateSelected];
        //[cardButton setTitle:card.contents forState:UIControlStateSelected | UIControlStateDisabled];
        
        cardButton.selected = card.isFaceUp;
        cardButton.enabled = !card.unplayable;
        cardButton.alpha = card.unplayable ? 0.3 : 1.0;
        self.flipResult.text = self.game.flipResults;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    self.gameSelector.enabled = NO;
    if ([self.gameSelector selectedSegmentIndex] == 0) {
        [self.game twoFlipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    } else {
        [self.game threeFlipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    }
    self.flipCount++;
    [self updateUI];
}


- (IBAction)dealButton:(UIButton *)sender
{
    self.gameSelector.enabled = YES;
    self.game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[[PlayingCardDeck alloc] init]];
    self.flipCount = 0;
    [self updateUI];
}
@end
