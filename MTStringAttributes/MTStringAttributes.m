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
@property (nonatomic, strong) NSMutableParagraphStyle *paragraphStyle;
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
    if ([self.paragraphStyle respondsToSelector:aSelector]) {
        return self.paragraphStyle;
    }
    else if ([self.shadow respondsToSelector:aSelector]) {
        return self.shadow;
    }
    return [super forwardingTargetForSelector:aSelector];
}



//#pragma mark - Paragraph Style
//
//- (void)setLineSpacing:(CGFloat *)lineSpacing
//{
//    _lineSpacing = lineSpacing;
//    self.paragraphStyle.lineSpacing = lineSpacing;
//}
//
//- (void)setParagraphSpacing:(CGFloat *)paragraphSpacing
//{
//    _paragraphSpacing = paragraphSpacing;
//    self.paragraphStyle.paragraphSpacing = paragraphSpacing;
//}
//
//- (void)setAlignment:(NSTextAlignment)alignment
//{
//    _alignment = alignment;
//    self.paragraphStyle.alignment = alignment;
//}
//
//- (void)setFirstLineHeadIndent:(CGFloat)firstLineHeadIndent
//{
//    _firstLineHeadIndent = firstLineHeadIndent;
//    self.paragraphStyle.firstLineHeadIndent = firstLineHeadIndent;
//}
//
//- (void)setHeadIndent:(CGFloat)headIndent
//{
//    _headIndent = headIndent;
//    self.paragraphStyle.headIndent = headIndent;
//}
//
//- (void)setTailIndent:(CGFloat)tailIndent
//{
//    _tailIndent = tailIndent;
//    self.paragraphStyle.tailIndent = tailIndent;
//}
//
//- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
//{
//    _lineBreakMode = lineBreakMode;
//    self.paragraphStyle.lineBreakMode = lineBreakMode;
//}
//
//- (void)setMinLineHeight:(CGFloat)minLineHeight
//{
//    _minLineHeight = minLineHeight;
//    self.paragraphStyle.minimumLineHeight = minLineHeight;
//}
//
//- (void)setMaxLineHeight:(CGFloat)maxLineHeight
//{
//    _maxLineHeight = maxLineHeight;
//    self.paragraphStyle.maximumLineHeight = maxLineHeight;
//}
//
//- (void)setTabStop:(NSTextTab *)tabStop
//{
//    _tabStop = tabStop;
//    self.paragraphStyle
//}
//
//- (void)setRemoveTabStop:(NSTextTab *)removeTabStop
//{
//
//}
//
//- (void)setTabStops:(NSArray *)tabStops
//{
//
//}
//
//- (void)setWritingDirection:(NSWritingDirection)writingDirection
//{
//
//}
//
//- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple
//{
//
//}
//
//- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore
//{
//
//}
//
//- (void)setDefaultTabInterval:(CGFloat)defaultTabInterval
//{
//
//}
//
//- (void)setTextBlocks:(NSArray *)textBlocks
//{
//
//}
//
//- (void)setTextLists:(NSArray *)textLists
//{
//
//}
//
//- (void)setHyphenationFactor:(CGFloat)hyphenationFactor
//{
//
//}
//
//- (void)setTighteningFactorForTruncation:(CGFloat)tighteningFactorForTruncation
//{
//
//}
//
//- (void)setHeaderLevel:(NSInteger)headerLevel
//{
//
//}



//#pragma mark - Shadow
//
//- (void)setShadowBlurRadius:(CGFloat)shadowBlurRadius
//{
//
//}

//- (void)setShadowColor:(id)shadowColor
//{
//
//}

//- (void)setShadowOffsetX:(CGFloat)shadowOffsetX
//{
//
//}
//
//- (void)setShadowOffsetY:(CGFloat)shadowOffsetY
//{
//    _shadowOffsetY = shadowOffsetY;
//    self.shadow.shadowOffset
//}


- (NSDictionary *)dictionary
{
    if (_paragraphStyle) {
        self.attributes[NSParagraphStyleAttributeName] = self.paragraphStyle;
    }
    if (_shadow) {
        self.attributes[NSShadowAttributeName] = self.shadow;
    }
    return [self.attributes copy];
}




#pragma mark - Private

- (NSMutableParagraphStyle *)paragraphStyle
{
    if (!_paragraphStyle) {
        _paragraphStyle = [NSMutableParagraphStyle new];
    }
    return _paragraphStyle;
}

- (NSShadow *)shadow
{
    if (!_shadow) {
        _shadow = [NSShadow new];
    }
    return _shadow;
}

@end
