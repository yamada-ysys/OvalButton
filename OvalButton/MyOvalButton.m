//
//  MyOvalButton.m
//  OvalButton
//
//  Created by Satoshi Yamada on 2012/08/20.
//  Copyright (c) 2012年 Satoshi Yamada. All rights reserved.
//

#import "MyOvalButton.h"

@interface MyOvalButton ()

@property (nonatomic,strong) UIBezierPath *hitPath;

@end

@implementation MyOvalButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.hitPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	if (self) {
		self.hitPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0.0, 0.0, self.frame.size.width, self.frame.size.height)];
	}
	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
	if ([self.hitPath containsPoint:point]) {
		return self;
	}
	return nil;
}


/*
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
	if ((point.x < 0) || (point.x > self.frame.size.width) || (point.y < 0) || (point.y > self.frame.size.height)){
		// そもそも範囲外
		return nil;
	}
	
	// CGImageを取得する
	CGImageRef  imageRef = [self imageForState:UIControlStateNormal].CGImage;
	
	// ビットマップデータを取得する
	CGDataProviderRef dataProvider = CGImageGetDataProvider(imageRef);
	CFDataRef dataRef = CGDataProviderCopyData(dataProvider);
	UInt8* buffer = (UInt8*)CFDataGetBytePtr(dataRef);
	
	size_t bytesPerRow = CGImageGetBytesPerRow(imageRef);
	
	// ピクセルのポインタを取得する
	UInt8*  pixelPtr = buffer + (int)(point.y) * bytesPerRow + (int)(point.x) * 4;
	
	// 色情報を取得する
	UInt8 a = *(pixelPtr + 3);	// α
//	UInt8 r = *(pixelPtr + 2);  // R
//	UInt8 g = *(pixelPtr + 1);  // G
//	UInt8 b = *(pixelPtr + 0);  // B
	
	CFRelease(dataRef);
	
	if (a > 0) {
		return self;
	}
	return nil;
}
*/

@end
