//
//  MTStringAttributesTests.m
//  MTStringAttributesTests
//
//  Created by Adam Kirk on 2/12/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//

#import "MTStringAttributesTests.h"
#import "MTStringAttributes.h"

@implementation MTStringAttributesTests


- (void)testExample
{
    MTStringAttributes *attributes = [[MTStringAttributes alloc] init];
    attributes.font = nil;
    attributes.textColor = [UIColor redColor];
    attributes.backgroundColor = [UIColor blackColor];
    attributes.strikethrough = YES;
    attributes.underline = YES;

    attributes.ligatures = YES;
    attributes.kern = @(1);
    attributes.outlineColor = [UIColor blueColor];
    attributes.outlineWidth = @(2);

    attributes.paragraphStyle = [[NSParagraphStyle alloc] init];

    attributes.shadowBlurRadius = @(1.4);
    attributes.shadowColor  = [UIColor grayColor];
    attributes.shadowOffsetX    = @(0.2);
    attributes.shadowOffsetY    = @(0.3);

    NSDictionary *dict = [attributes dictionary];

    // make sure its a valid dictionary that attributed string will accept
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"A test string" attributes:dict];
    STAssertNotNil(str, nil);

    STAssertNotNil(dict[NSForegroundColorAttributeName], nil);
    STAssertNotNil(dict[NSBackgroundColorAttributeName], nil);
    STAssertNotNil(dict[NSStrikethroughStyleAttributeName], nil);
    STAssertNotNil(dict[NSUnderlineStyleAttributeName], nil);
    STAssertNotNil(dict[NSLigatureAttributeName], nil);
    STAssertNotNil(dict[NSKernAttributeName], nil);
    STAssertNotNil(dict[NSStrokeColorAttributeName], nil);
    STAssertNotNil(dict[NSStrokeWidthAttributeName], nil);
    STAssertNotNil(dict[NSParagraphStyleAttributeName], nil);
    STAssertNotNil(dict[NSShadowAttributeName], nil);
}

@end






