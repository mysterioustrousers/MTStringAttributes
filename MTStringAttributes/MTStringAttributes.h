//
//  MTStringAttributes.h
//  MTStringAttributes
//
//  Created by Adam Kirk on 2/12/13.
//  Copyright (c) 2013 Mysterious Trousers. All rights reserved.
//


@interface MTStringAttributes : NSObject

// Basics
@property (strong, nonatomic) UIFont            *font;
@property (strong, nonatomic) UIColor           *textColor;
@property (strong, nonatomic) UIColor           *backgroundColor;
@property (        nonatomic) BOOL              strikethrough;
@property (        nonatomic) BOOL              underline;

// Advanced
@property (        nonatomic) BOOL              ligatures;              // Allow some characters to be combined
@property (strong, nonatomic) NSNumber          *kern;                  // distance between characters
@property (strong, nonatomic) UIColor           *outlineColor;
@property (strong, nonatomic) NSNumber          *outlineWidth;

// Paragraph Style
@property (strong, nonatomic) NSParagraphStyle  *paragraphStyle;

// Shadow
@property (strong, nonatomic) NSNumber          *shadowBlurRadius;
@property (strong, nonatomic) UIColor           *shadowColor;
@property (strong, nonatomic) NSNumber          *shadowOffsetX;
@property (strong, nonatomic) NSNumber          *shadowOffsetY;


- (NSDictionary *)dictionary;

@end
