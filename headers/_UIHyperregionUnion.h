// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 15.0.0 | SDK: 15.0.0


#ifndef _UIHYPERREGIONUNION_H
#define _UIHYPERREGIONUNION_H

@class NSArray, NSString;

#import <Foundation/Foundation.h>

@protocol _UIHyperregion_Internal;
@protocol _UIHyperregion;
@protocol NSSecureCoding;
@protocol NSCopying;

@interface _UIHyperregionUnion : NSObject <_UIHyperregion_Internal, _UIHyperregion, NSSecureCoding, NSCopying>



@property (readonly, nonatomic) *CGFloat _temp; // ivar: __temp
@property (copy, nonatomic, setter=_setRegions:) NSArray *_regions; // ivar: __regions
@property (readonly, nonatomic) NSUInteger _dimensions; // ivar: __dimensions
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)_closestPoint:(*CGFloat)arg0 toPoint:(*CGFloat)arg1 ;
-(id)initWithDimensions:(NSUInteger)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(BOOL)_isBoundaryCrossedFromPoint:(*CGFloat)arg0 toPoint:(*CGFloat)arg1 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(id)initWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(NSUInteger)_regionIndexForClosestPoint:(*CGFloat)arg0 toPoint:(*CGFloat)arg1 ;
-(void)dealloc;
+(BOOL)supportsSecureCoding;
+(id)keyPathsForValuesAffectingSelf;


@end


#endif