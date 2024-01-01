#import <UIKit/UIKit.h>
#import "Tweak.h"




@interface SBHomeScreenViewController : UIViewController
@end

%hook SBHomeScreenViewController

-(void)viewDidLoad {
	self.view.backgroundColor = UIColor.greenColor;
}

%end




PGPictureInPictureViewController *PGPVC;
CGPoint panGestureGlobalLocation;
%hook PGPictureInPictureViewController

-(void)viewDidLoad {
	%log;
	PGPVC = self;
	%orig;
}

%end

%hook SBPIPInteractionController


-(void)handlePanGesture:(id)arg1 {
	// // NSLog(@"handle pan gesture, this is arg1: %@", arg1);
	UIPanGestureRecognizer *panGesture = arg1;
	CGPoint panGestureLocation = [panGesture locationInView:panGesture.view];
	panGestureGlobalLocation = panGestureLocation;
	NSLog(@"handlePanGesture called: %@", NSStringFromCGPoint(panGestureLocation));
	// PGPVC.view.center = panGestureLocation;
	CGPoint currentPosition = [self _currentPosition];
	NSLog(@"current Position: %@", NSStringFromCGPoint(currentPosition));
	// if (panGestureLocation.x > 300 || panGestureLocation.x < 10) {
	// 	%orig;
	// }
	%orig;
}
-(void)_handleGestureBeganState:(id)arg0  { %log; %orig; }
-(void)_handleGestureEndedState:(id)arg0  { %log; %orig;
	NSLog(@"global location: %@", NSStringFromCGPoint(panGestureGlobalLocation));
	[self setStashed:true];
 }
-(void)__handleGesturesEndedState:(id)arg0  { %log; %orig; }

// - (UIView *)targetView { %log; UIView * r = %orig; NSLog(@" = %@", r); return r; }
// - (CGSize)containerSize { %log; CGSize r = %orig; NSLog(@" = {%g, %g}", r.width, r.height); return r; }
// - (CGRect)initialFrame { %log; CGRect r = %orig; NSLog(@" = {{%g, %g}, {%g, %g}}", r.origin.x, r.origin.y, r.size.width, r.size.height); return r; }
// - (CGFloat)preferredScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (CGFloat)currentNormalizedScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (CGFloat)stashProgress { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (NSInteger)orientation { %log; NSInteger r = %orig; NSLog(@" = %ld", (long)r); return r; }
// - (SBPIPContentViewLayoutSettings *)layoutSettings { %log; SBPIPContentViewLayoutSettings * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSUInteger)canonicalPosition { %log; NSUInteger r = %orig; NSLog(@"the canonical position = %lu", (unsigned long)r); return r; }
// - (CGRect)nonoperationalFrame { %log; CGRect r = %orig; NSLog(@" = {{%g, %g}, {%g, %g}}", r.origin.x, r.origin.y, r.size.width, r.size.height); return r; }
// - (NSString *)debugName { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// - (void)setTargetOverlayView:(UIView *)targetOverlayView { %log; %orig; }
// - (UIView *)targetOverlayView { %log; UIView * r = %orig; NSLog(@" = %@", r); return r; }
// - (void)setEnabled:(BOOL)enabled { %log; %orig; }
// - (BOOL)isEnabled { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// - (void)setStashed:(BOOL)stashed { %log; %orig; }
// - (BOOL)isStashed { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// - (void)setPreferredNormalizedScale:(CGFloat)preferredNormalizedScale { %log; %orig; }
// - (CGFloat)preferredNormalizedScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (void)setPreferredContentSize:(CGSize)preferredContentSize { %log; %orig; }
// - (CGSize)preferredContentSize { %log; CGSize r = %orig; NSLog(@" = {%g, %g}", r.width, r.height); return r; }
// - (void)setEdgeInsets:(UIEdgeInsets)edgeInsets { NSLog(@"%@", NSStringFromUIEdgeInsets(edgeInsets)); %orig; }
// - (UIEdgeInsets)edgeInsets { %log; UIEdgeInsets r = %orig; return r; }
// - (void)setStashedPadding:(UIEdgeInsets)stashedPadding { NSLog(@"%@", NSStringFromUIEdgeInsets(stashedPadding)); %orig; }
// - (UIEdgeInsets)stashedPadding { %log; UIEdgeInsets r = %orig; return r; }
// - (NSUInteger)hash { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
// - (Class)superclass { %log; Class r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)description { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)debugDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// -(BOOL)_isRotating { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)gestureRecognizer:(id)arg0 shouldReceiveTouch:(id)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_updatePreferredContentSize { %log; %orig; }
// -(void)_setupStateCapture { %log; %orig; }
// -(void)_setupGestureRecognizers { %log; %orig; }
-(void)handlePinchGesture:(id)arg0  { 
	%log; 
	%orig;
	// UIPinchGestureRecognizer *pinchGesture = arg0;
	// CGFloat PGPSize = pinchGesture.scale;
	// if (pinchGesture.scale > PGPSize) {
	// 	PGPVC.view.fr
	// }
}
// -(CGFloat)_currentScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// -(BOOL)isPinching { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isPinching { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)isRotating { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isPanning { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isInteractive { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)settings:(id)arg0 changedValueForKeyPath:(id)arg1  { %log; %orig; }
// -(void)_removeGestureRecognizers { %log; %orig; }
// -(BOOL)gestureRecognizerShouldBegin:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)dealloc { %log; %orig; }
// -(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(struct CGPoint )_currentPosition { %log; struct CGPoint  r = %orig; NSLog(@"current Position: %@", NSStringFromCGPoint(r)); return r; }
// -(CGFloat)_currentRotation { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// -(void)_setDefaults { %log; %orig; }
// -(BOOL)gestureRecognizerShouldFailForMovementPastHysteresis:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_setupDefaultInteractorsAndHyperRegions { %log; %orig; }
// -(void)_updateInteractorsAndCommit:(BOOL)arg0  { %log; %orig; }
// -(void)_setupForInitialFrame { %log; %orig; }
// -(struct CGPoint )_currentPositionForLayoutReason:(NSUInteger)arg0  { %log; struct CGPoint  r = %orig; return r; }
// -(struct CGSize )_currentSizeForLayoutReason:(NSUInteger)arg0  { %log; struct CGSize  r = %orig; return r; }
// -(struct CGSize )_lastSteadySize { %log; struct CGSize  r = %orig; return r; }
// -(BOOL)_hasValidInteractionTargetView { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)handleRotationGesture:(id)arg0  { %log; %orig; }
// -(void)_updateSettingsDrivenParameters { %log; %orig; }
// -(void)addPositionRegionComposer:(id)arg0  { %log; %orig; }
// -(void)_setNeedsLayoutForTraits:(NSUInteger)arg0 withReason:(NSUInteger)arg1 behavior:(int)arg2  { %log; %orig; }
// -(struct CGPoint )_closestToDefaultCornersPosition { %log; struct CGPoint  r = %orig; NSLog(@" = %@", NSStringFromCGPoint(r)); return r; }
// -(void)_performInitialLayoutIfNeeded { %log; %orig; }
// -(BOOL)_isGesturing { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(NSUInteger)_canonicalPositionForPoint:(struct CGPoint )arg0  { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
// -(void)setPlatformMetrics:(id)arg0 contentSize:(struct CGSize )arg1 animationBehavior:(int)arg2  { %log; %orig; }
// -(CGFloat)_proratedScaleForNormalizedScale:(CGFloat)arg0  { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// -(void)_cancelAllGestures { %log; %orig; }
// -(BOOL)_hasInFlightLayoutAnimations { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_applyPreferredScale { %log; %orig; }
// -(BOOL)_isPreferredContentSizeDirty { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_noteStashProgress:(CGFloat)arg0 withReason:(NSUInteger)arg1  { %log; %orig; }
// -(struct CGAffineTransform )_stashTabCompensationTransformForStashProgress:(CGFloat)arg0 reason:(NSUInteger)arg1  { %log; struct CGAffineTransform  r = %orig; return r; }
// -(struct CGPoint )_roundPosition:(struct CGPoint )arg0 forSize:(struct CGSize )arg1  { %log; struct CGPoint  r = %orig; return r; }
// -(CGFloat)_stashProgressForPosition:(struct CGPoint )arg0  { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// -(BOOL)_isPositionCloserToStashedLeftRegion:(struct CGPoint )arg0 closestPointOut:(struct CGPoint *)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isSystemGestureRecognizer:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(struct CGPoint )_convertPointToInteractionTargetView:(struct CGPoint )arg0 fromSystemGestureRecognizer:(id)arg1  { %log; struct CGPoint  r = %orig; return r; }
// -(void)__moveToAnchorPoint:(struct CGPoint )arg0 reason:(id)arg1  { %log; %orig; }
// -(void)_adjustContentViewAnchorPointForGestureRecognizer:(id)arg0  { %log; %orig; }

// -(void)_resetAnchorPoint { %log; } //maybe causing to move to sides
// -(UIEdgeInsets)_inFlightHitTestPadding { %log; struct UIEdgeInsets  r = %orig; NSLog(@"%@", NSStringFromUIEdgeInsets(r)); return r; } 
// -(NSUInteger)__traitsForGesturesReasons:(NSUInteger)arg0  { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
// -(BOOL)_isSizeAffectedByLayoutReasons:(NSUInteger)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_sizeChangeBeganWithBehavior:(int)arg0  { %log; %orig; }
// -(void)_sizeChangeEnded { %log; %orig; }
// -(BOOL)_isGestureRecognizerRecognizing:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(id)_scaleHyperregion { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(id)_rotationHyperregion { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(id)positionHyperregion { 
	%log; 
	_UIHyperregionUnion *r = %orig; 
	NSLog(@" = %@", r);
	// _UIHyperrectangle *hyperRectangle = r._regions[0];
	// NSLog(@"this is _UIHyperrectangle._minimumPoint pointer: %p", hyperRectangle._minimumPoint);
	// const double *hyperRectanglePointer = hyperRectangle._minimumPoint;

	// NSLog(@"this is _UIHyperrectangle._minimumPoint value: {%f, %f}", hyperRectanglePointer[0], hyperRectanglePointer[1]);
	return r; 
}
// -(void)_updateHyperregionVisualizationIfNecessary { %log; %orig; } //didn't change anything 
// -(BOOL)_regionIsStashedOne:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; } 
// -(void)_updatePIPSizeGeometryContext { %log; %orig; }
// -(struct SBPIPPositionInteractionStateContext )_currentPositionInteractionStateContext { %log; struct SBPIPPositionInteractionStateContext r = %orig; return r; }
// -(void)positionRegionComposerDidInvalidate:(id)arg0  { %log; %orig; }
// -(void)positionRegionComposerNeedsUpdate:(id)arg0 behavior:(int)arg1  { %log; %orig; }
// -(id)initWithInteractionTargetView:(id)arg0 preferredContentSize:(struct CGSize )arg1 interactionSettings:(id)arg2 dataSource:(id)arg3 delegate:(id)arg4  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)setContentLayoutSettings:(id)arg0 animationBehavior:(int)arg1  { %log; %orig; }
// -(void)toggleUserPreferredScale { %log; %orig; }
// -(void)layoutInteractedTraits:(NSUInteger)arg0 withReason:(NSUInteger)arg1 source:(id)arg2  { %log; %orig; }
// -(void)layoutWithFrame:(struct CGRect )arg0 reason:(id)arg1 source:(id)arg2  { %log; %orig; }
// -(void)handleExternalPanGesture:(id)arg0  { %log; %orig; }

%end

%ctor {
	NSLog(@"this is initialized PGPUnlock.dylib");
}
