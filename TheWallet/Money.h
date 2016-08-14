//
//  Money.h
//  TheWallet
//
//  Created by Akixe on 14/8/16.
//  Copyright © 2016 AOA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject
- (id) initWithAmount: (NSInteger) amount;
- (Money *) times: (NSInteger) multiplier;
@end