// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 15.0.0 | SDK: 15.0.0


#ifndef _UIHYPERPOINT_H
#define _UIHYPERPOINT_H

@class NSString;

#import <Foundation/Foundation.h>

@protocol _UIHyperregion_Internal;
@protocol _UIHyperregion;
@protocol NSSecureCoding;
@protocol NSCopying;

@interface _UIHyperpoint : NSObject <_UIHyperregion_Internal, _UIHyperregion, NSSecureCoding, NSCopying>

 {
    *CGFloat __value;
}


@property (readonly, nonatomic) *CGFloat _value;
@property (readonly, nonatomic) NSUInteger _dimensions; // ivar: __dimensions
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)_closestPoint:(*CGFloat)arg0 toPoint:(*CGFloat)arg1 ;
-(id)initWithDimensions:(NSUInteger)arg0 ;
-(id)initWithValue:(*CGFloat)arg0 dimensions:(NSUInteger)arg1 ;
-(BOOL)isEqual:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithValue:(*CGFloat)arg0 objCType:(char *)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)_mutateValue:(id)arg0 ;
-(void)_copyValue:(*CGFloat)arg0 ;
+(BOOL)supportsSecureCoding;
+(id)keyPathsForValuesAffectingSelf;


@end


#endif