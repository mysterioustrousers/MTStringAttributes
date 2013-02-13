//
//  MTStringParserTests.m
//  MTStringAttributes
//
//  Created by Adam Kirk on 2/13/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//

#import "MTStringParserTests.h"
#import "MTStringParser.h"

@implementation MTStringParserTests


- (void)testParser
{
    [[MTStringParser sharedParser] addStyleWithTagName:@"test" font:nil];
    NSAttributedString *string = [[MTStringParser sharedParser] attributedStringFromMarkup:@"this is a <test>test</test>"];
    STAssertNotNil(string, nil);
}


@end
