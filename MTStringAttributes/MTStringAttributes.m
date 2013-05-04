//
//  MTStringAttributes.m
//  MTStringAttributes
//
//  Created by Adam Kirk on 2/12/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//

#import "MTStringAttributes.h"

@implementation MTStringAttributes


- (id)init
{
    self = [super init];
    if (self) {
        _strikethrough  = NO;
        _underline      = NO;
        _ligatures      = NO;
    }
    return self;
}

- (NSDictionary *)dictionary
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];

    // Basics
    if (_font) {
        dictionary[NSFontAttributeName] = _font;
    }

    if (_textColor) {
        dictionary[NSForegroundColorAttributeName] = _textColor;
    }

    if (_backgroundColor) {
        dictionary[NSBackgroundColorAttributeName] = _backgroundColor;
    }

    if (_strikethrough) {
        dictionary[NSStrikethroughStyleAttributeName] = @(_strikethrough);
    }

    if (_underline) {
        dictionary[NSUnderlineStyleAttributeName] = @(_underline);
    }



    // Advanced
    if (_ligatures) {
        dictionary[NSLigatureAttributeName] = @(_ligatures);
    }

    if (_kern) {
        dictionary[NSKernAttributeName] = _kern;
    }

    if (_outlineColor) {
        dictionary[NSStrokeColorAttributeName] = _outlineColor;
    }

    if (_outlineWidth) {
        dictionary[NSStrokeWidthAttributeName] = _outlineWidth;
    }


    // Paragraph Style
    if (_paragraphStyle) {
        dictionary[NSParagraphStyleAttributeName] = _paragraphStyle;
    }



    // Shadow
    if (_shadowBlurRadius || _shadowColor || _shadowOffsetX || _shadowOffsetY) {
        NSShadow *shadow                        = [[NSShadow alloc] init];
        if (_shadowBlurRadius)                  shadow.shadowBlurRadius = [_shadowBlurRadius floatValue];
        if (_shadowColor)                       shadow.shadowColor      = _shadowColor;
        if (_shadowOffsetX || _shadowOffsetY)   shadow.shadowOffset     = CGSizeMake([_shadowOffsetX floatValue], [_shadowOffsetY floatValue]);
        dictionary[NSShadowAttributeName] = shadow;
    }

    return dictionary;
}

#if TARGET_OS_IPHONE

- (NSDictionary *)UIKitDictionary
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];

    if (_font) {
        dictionary[UITextAttributeFont] = _font;
    }

    if (_textColor) {
        dictionary[UITextAttributeTextColor] = _textColor;
    }

    if (_shadowColor) {
        dictionary[UITextAttributeTextShadowColor] = _shadowColor;
    }

    if (_shadowOffsetX || _shadowOffsetY) {
        dictionary[UITextAttributeTextShadowOffset] = [NSValue valueWithUIOffset:UIOffsetMake([_shadowOffsetX floatValue], [_shadowOffsetY floatValue])];
    }

    return dictionary;
}

#endif

@end
