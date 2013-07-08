//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Elie Hassan on 7/2/13.
//  Copyright (c) 2013 Elie Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayingCardDeck.h"

@interface CardGameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *flipResult;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

- (IBAction)dealButton:(UIButton *)sender;
@end
