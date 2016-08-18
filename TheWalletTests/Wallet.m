//
//  Wallet.m
//  TheWallet
//
//  Created by Akixe on 18/8/16.
//  Copyright © 2016 AOA. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Broker.h"
#import "Money.h"
@interface Wallet : XCTestCase

@end

@implementation Wallet

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

// 40€ + $20 = $100 con rate 2USD:1EUR
- (void) testAdditionWithReduction
{
    Broker *broker = [[Broker alloc] init];
    [broker addRate:2 fromCurrency:@"USD" toCurrency:@"EUR"];
    
    Wallet *wallet = [[Wallet alloc] initWithAmount: 40 currency: @"EUR"];
    [wallet plus: [Money dollarWithAmount:20]];
}
@end
