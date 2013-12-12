//
//  MTStringAttributes.m
//  MTStringAttributes
//
//  Created by Adam Kirk on 2/12/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//

#import "MTStringAttributes.h"


@interface MTStringAttributes ()
@property (nonatomic, strong) NSMutableDictionary     *attributes;
@property (nonatomic, strong) NSMutableParagraphStyle *internalParagraphStyle;
@property (nonatomic, strong) NSShadow                *shadow;
@end


@implementation MTStringAttributes

@dynamic lineSpacing;
@dynamic paragraphSpacing;
@dynamic alignment;
@dynamic firstLineHeadIndent;
@dynamic headIndent;
@dynamic tailIndent;
@dynamic lineBreakMode;
@dynamic minimumLineHeight;
@dynamic maximumLineHeight;
@dynamic tabStop;
@dynamic removeTabStop;
@dynamic tabStops;
@dynamic writingDirection;
@dynamic lineHeightMultiple;
@dynamic paragraphSpacingBefore;
@dynamic defaultTabInterval;
@dynamic textBlocks;
@dynamic textLists;
@dynamic hyphenationFactor;
@dynamic tighteningFactorForTruncation;
@dynamic headerLevel;
@dynamic shadowBlurRadius;
@dynamic shadowColor;
@dynamic shadowOffset;

- (id)init
{
    self = [super init];
    if (self) {
        _attributes = [NSMutableDictionary new];
    }
    return self;
}



#pragma mark - Basics

- (void)setFont:(id)font
{
    _font = font;
    _attributes[NSFontAttributeName] = font;
}

- (void)setTextColor:(id)textColor
{
    _textColor = textColor;
    _attributes[NSForegroundColorAttributeName] = textColor;
}

- (void)setBackgroundColor:(id)backgroundColor
{
    _backgroundColor = backgroundColor;
    _attributes[NSBackgroundColorAttributeName] = backgroundColor;
}





#pragma mark - More

- (void)setLigatures:(BOOL)ligatures
{
    _ligatures = ligatures;
}

- (void)setKern:(CGFloat)kern
{
    _kern = kern;
    _attributes[NSKernAttributeName] = @(kern);
}

- (void)setStrikethrough:(BOOL)strikethrough
{
    _strikethrough = strikethrough;
    _attributes[NSStrikethroughStyleAttributeName] = @(strikethrough);
}

- (void)setStrikethroughColor:(id)strikethroughColor
{
    _strikethroughColor = strikethroughColor;
    _attributes[NSStrikethroughColorAttributeName] = strikethroughColor;
}

- (void)setUnderline:(BOOL)underline
{
    _underline = underline;
    _attributes[NSUnderlineStyleAttributeName] = @(_underline);
}

- (void)setUnderlineColor:(id)underlineColor
{
    _underlineColor = underlineColor;
    _attributes[NSUnderlineColorAttributeName] = underlineColor;
}

- (void)setStrokeColor:(id)strokeColor
{
    _strokeColor = strokeColor;
    _attributes[NSStrokeColorAttributeName] = strokeColor;
}

- (void)setStrokeWidth:(CGFloat)strokeWidth
{
    _strokeWidth = strokeWidth;
    _attributes[NSStrokeWidthAttributeName] = @(strokeWidth);
}

- (void)setTextAttachment:(NSTextAttachment *)textAttachment
{
    _textAttachment = textAttachment;
    _attributes[NSAttachmentAttributeName] = textAttachment;
}

- (void)setLink:(NSURL *)link
{
    _link = link;
    _attributes[NSLinkAttributeName] = link;
}

- (void)setBaselineOffset:(CGFloat)baselineOffset
{
    _baselineOffset = baselineOffset;
    _attributes[NSBaselineOffsetAttributeName] = @(baselineOffset);
}

- (void)setObliqueness:(CGFloat)obliqueness
{
    _obliqueness = obliqueness;
    _attributes[NSObliquenessAttributeName] = @(obliqueness);
}

- (void)setExpansion:(CGFloat)expansion
{
    _expansion = expansion;
    _attributes[NSExpansionAttributeName] = @(expansion);
}

- (void)setVerticalGlyphForm:(BOOL)verticalGlyphForm
{
    _verticalGlyphForm = verticalGlyphForm;
    _attributes[NSVerticalGlyphFormAttributeName] = @(verticalGlyphForm);
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([self.internalParagraphStyle respondsToSelector:aSelector]) {
        return self.internalParagraphStyle;
    }
    else if ([self.shadow respondsToSelector:aSelector]) {
        return self.shadow;
    }
    return [super forwardingTargetForSelector:aSelector];
}



#pragma mark - Paragraph Style

- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle
{
    self.internalParagraphStyle = [paragraphStyle mutableCopy];
}

- (NSParagraphStyle *)paragraphStyle
{
    return [self.internalParagraphStyle copy];
}



#pragma mark - Dictionary

- (NSDictionary *)dictionary
{
    if (_internalParagraphStyle) {
        self.attributes[NSParagraphStyleAttributeName] = self.internalParagraphStyle;
    }
    if (_shadow) {
        self.attributes[NSShadowAttributeName] = self.shadow;
    }
    return [self.attributes copy];
}




#pragma mark - Private

- (NSMutableParagraphStyle *)internalParagraphStyle
{
    if (!_internalParagraphStyle) {
        _internalParagraphStyle = [NSMutableParagraphStyle new];
    }
    return _internalParagraphStyle;
}

- (NSShadow *)shadow
{
    if (!_shadow) {
        _shadow = [NSShadow new];
    }
    return _shadow;
}

@end
