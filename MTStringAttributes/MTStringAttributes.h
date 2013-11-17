//
//  MTStringAttributes.h
//  MTStringAttributes
//
//  Created by Adam Kirk on 2/12/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//


@interface MTStringAttributes : NSObject

// Basics
@property (nonatomic, strong) id                 font;                              // UIFont || NSFont
@property (nonatomic, strong) id                 textColor;                         // UIColor || NSColor
@property (nonatomic, strong) id                 backgroundColor;                   // UIColor || NSColor

// More
@property (nonatomic, assign) BOOL               ligatures;                         // Allow some characters to be combined
@property (nonatomic, strong) CGFloat            *kern;                             // distance between characters
@property (nonatomic, assign) BOOL               strikethrough;
@property (nonatomic, strong) id                 strikethroughColor;
@property (nonatomic, assign) BOOL               underline;
@property (nonatomic, strong) id                 underlineColor;
@property (nonatomic, strong) id                 strokeColor;
@property (nonatomic, assign) CGFloat            strokeWidth;
@property (nonatomic, strong) NSString           *textEffect;                      // nil or NSTextEffectLetterpressStyle
@property (nonatomic, strong) NSTextAttachment   *textAttachment;
@property (nonatomic, strong) NSURL              *link;
@property (nonatomic, assign) CGFloat            baselineOffset;
@property (nonatomic, assign) CGFloat            obliqueness;
@property (nonatomic, assign) CGFloat            expansion;
@property (nonatomic, assign) BOOL               verticalGlyphForm;

// Paragraph Style
@property (nonatomic, assign) CGFloat            *lineSpacing;
@property (nonatomic, assign) CGFloat            *paragraphSpacing;
@property (nonatomic, assign) NSTextAlignment    alignment;
@property (nonatomic, assign) CGFloat            firstLineHeadIndent;
@property (nonatomic, assign) CGFloat            headIndent;
@property (nonatomic, assign) CGFloat            tailIndent;
@property (nonatomic, assign) NSLineBreakMode    lineBreakMode;
@property (nonatomic, assign) CGFloat            minLineHeight;
@property (nonatomic, assign) CGFloat            maxLineHeight;
@property (nonatomic, strong) NSTextTab          *tabStop;
@property (nonatomic, strong) NSTextTab          *removeTabStop;
@property (nonatomic, strong) NSArray            *tabStops;
@property (nonatomic, assign) NSWritingDirection writingDirection;
@property (nonatomic, assign) CGFloat            lineHeightMultiple;
@property (nonatomic, assign) CGFloat            paragraphSpacingBefore;
@property (nonatomic, assign) CGFloat            defaultTabInterval;
@property (nonatomic, strong) NSArray            *textBlocks;
@property (nonatomic, strong) NSArray            *textLists;
@property (nonatomic, assign) CGFloat            hyphenationFactor;
@property (nonatomic, assign) CGFloat            tighteningFactorForTruncation;
@property (nonatomic, assign) NSInteger          headerLevel;

// Shadow
@property (nonatomic, strong) CGFloat            *shadowBlurRadius;
@property (nonatomic, strong) id                 shadowColor;                       // UIColor || NSColor
@property (nonatomic, strong) CGFloat            *shadowOffsetX;
@property (nonatomic, strong) CGFloat            *shadowOffsetY;

- (NSDictionary *)dictionary;

@end
