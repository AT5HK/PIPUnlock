#import <UIKit/UIKit.h>
#import "Tweak.h"




@interface SBHomeScreenViewController : UIViewController
@end

%hook SBHomeScreenViewController

-(void)viewDidLoad {
	self.view.backgroundColor = UIColor.greenColor;
}

%end


// %hook SBPIPWindow
// -(void)addActiveOrientationObserver:(id)arg1 {
// 	// do nothing
// 	NSLog(@"called from: addActiveOrientationObserver:(id)arg1");
// 	%orig;
// }

// %end

// %hook SBPIPWindowRootViewController
// - (void)setActiveInterfaceOrientation:(long long)activeInterfaceOrientation { %log; %orig; }
// - (long long)activeInterfaceOrientation { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// - (NSArray *)containerViewControllers { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
// - (unsigned long long)hash { %log; unsigned long long r = %orig; NSLog(@" = %llu", r); return r; }
// - (Class)superclass { %log; Class r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)description { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)debugDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// -(long long)_overrideWindowActiveInterfaceOrientation { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// -(void)activeInterfaceOrientationDidChangeToOrientation:(long long)arg1 willAnimateWithDuration:(double)arg2 fromOrientation:(long long)arg3  { %log; %orig; }
// -(void)addActiveOrientationObserver:(id)arg1  { %log; %orig; }
// -(void)activeInterfaceOrientationWillChangeToOrientation:(long long)arg1  { %log; %orig; }
// -(long long)_overrideInterfaceOrientationMechanics { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// -(long long)interfaceOrientationForContainerViewController:(id)arg1  { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// -(void)viewDidLayoutSubviews { %log; %orig; }
// -(void)dealloc { %log; %orig; }
// -(void)removeActiveOrientationObserver:(id)arg1  { %log; %orig; }
// -(BOOL)shouldAutorotate { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)removeContainerViewController:(id)arg1  { %log; %orig; }
// -(void)hideContainersExcludingContainerForContentViewControllerAndTetheredOnes:(id)arg1 animated:(BOOL)arg2  { %log; %orig; }
// -(void)showAllContainersAnimated:(BOOL)arg1  { %log; %orig; }
// -(void)containerViewControllerRequiredInterfaceOrientationDidChange:(id)arg1  { %log; %orig; }
// -(void)acquireInterfaceOrientationLockForContainerViewController:(id)arg1  { %log; %orig; }
// -(void)relinquishInterfaceOrientationLockForContainerViewController:(id)arg1  { %log; %orig; }
// -(id)initWithPIPController:(id)arg1  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)addContainerViewController:(id)arg1  { %log; %orig; }
// -(id)containerViewControllerForPictureInPictureContentViewController:(id)arg1  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)bringTetheredChildViewControllersToFront { %log; %orig; }
// -(void)_layoutInterfaceOrientationUnlockedContainerViewControllersAndForceLayout:(BOOL)arg1  { %log; %orig; }
// -(long long)_requiredInterfaceOrientationForContainerViewController:(id)arg1  { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// -(void)_layoutContainerViewControllers:(id)arg1 forceLayout:(BOOL)arg2  { %log; %orig; }
// -(void)layoutForActiveInterfaceOrientation:(long long)arg1 duration:(double)arg2 fromOrientation:(long long)arg3 forced:(BOOL)arg4  { %log; %orig; }
// -(BOOL)_hasOngoingMorphRestore { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_bringPGContentViewControllerWithContentTypeToFront:(long long)arg1  { %log; %orig; }
// -(long long)_interfaceOrientationForContainerViewController:(id)arg1  { %log; long long r = %orig; NSLog(@" = %lld", r); return r; }
// %end

// %hook SBPIPPegasusContainerAdapter
// // - (PGPictureInPictureViewController *)pictureInPictureViewController { %log; PGPictureInPictureViewController * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSUInteger)hash { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
// - (Class)superclass { %log; Class r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)description { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSString *)debugDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
// -(id)layoutSettings { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(id)debugName { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)invalidate { %log; %orig; }
// -(void)containerViewControllerStartReducingResourcesUsage:(id)arg0  { %log; %orig; }
// -(void)containerViewControllerStopReducingResourcesUsage:(id)arg0  { %log; %orig; }
// -(void)setContainerViewController:(id)arg0  { %log; %orig; }
// -(void)dealloc { %log; %orig; }
// -(void)prepareStartAnimationWithInitialInterfaceOrientation:(NSInteger)arg0 initialLayerFrame:(struct CGRect )arg1 completionHandler:(id)arg2  { %log; %orig; }
// -(void)performRotateAnimationWithRotation:(NSInteger)arg0 completionHandler:(id)arg1  { %log; %orig; }
// -(void)acquireInterfaceOrientationLock { %log; %orig; }
// -(void)relinquishInterfaceOrientationLock { %log; %orig; }
// -(BOOL)handleTapWhileStashedGesture { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)handleDoubleTapGesture { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)notePictureInPictureViewControllerTetheringDidUpdate { %log; %orig; }
// -(void)preferredContentSizeDidChangeForPictureInPictureViewController { %log; %orig; }
// -(void)performStartInIsolationWithCompletionHandler:(id)arg0  { %log; %orig; }
// -(void)performStartAnimationWithCompletionHandler:(id)arg0  { %log; %orig; }
// -(void)_performStopAnimationWithFinalInterfaceOrientation:(NSInteger)arg0 finalLayerFrame:(struct CGRect )arg1 completionHandler:(id)arg2  { %log; %orig; }
// -(void)performStopInIsolationWithCompletionHandler:(id)arg0  { %log; %orig; }
// -(void)performStopAnimationWithFinalInterfaceOrientation:(NSInteger)arg0 finalLayerFrame:(struct CGRect )arg1 completionHandler:(id)arg2  { %log; %orig; }
// -(void)updateMenuItems { %log; %orig; }
// -(void)notePictureInPictureViewControllerPrefersHiddenFromClonedDisplayDidChange { %log; %orig; }
// -(void)_reloadMenuButton { %log; %orig; }
// -(id)contentViewControllerForContainerViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(id)initWithPictureInPictureViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(BOOL)interactionControllerUseSystemGesturesForResizing:(id)arg0  {BOOL r = %orig; return r; } //for some reason any attempt to %log or NSlog this function causes it to crash when in picture in picture mode
// -(id)defaultPositionHyperregionComposers { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(BOOL)interactionControllerScalesDuringPanGesture:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)interactionController:(id)arg0 updateScaleInteractor:(id)arg1 pipSize:(struct CGSize )arg2 forPanGesture:(id)arg3  { %log; %orig; }
// -(void)loadSubviewsForContainerViewController:(id)arg0  { %log; %orig; }
// -(void)layoutSubviewsForContainerViewController:(id)arg0  { %log; %orig; }
// -(void)containerViewControllerWillBeginSizeChange:(id)arg0 behavior:(int)arg1  { %log; %orig; }
// -(void)containerViewControllerDidEndSizeChange:(id)arg0  { %log; %orig; }
// -(void)containerViewController:(id)arg0 didUpdateStashProgress:(CGFloat)arg1  { %log; %orig; }
// -(void)containerViewController:(id)arg0 willBeginInteractionWithGestureRecognizer:(id)arg1  { %log; %orig; }
// -(void)containerViewControllerDidEndInteraction:(id)arg0  { %log; } // is called when PIP pan gesture ends
// -(BOOL)isStashTabHiddenForContainerViewController:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)containerViewController:(id)arg0 wantsStashTabHidden:(BOOL)arg1 left:(BOOL)arg2 springSettings:(id)arg3 completion:(id)arg4  { %log; %orig; }
// -(BOOL)shouldDisableIdleTimerForContainerViewController:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)transitionAnimationWillBeginForContainerViewController:(id)arg0  { %log; %orig; }
// -(void)transitionAnimationDidEndForContainerViewController:(id)arg0  { %log; %orig; }
// -(id)morphAnimatorTargetViewForContainerViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(id)morphAnimatorTargetContainerViewForContainerViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)containerViewController:(id)arg0 didUpdateContentViewFrame:(struct CGRect )arg1 reason:(id)arg2  { %log; %orig; }
// -(void)containerViewController:(id)arg0 didUpdateStashState:(BOOL)arg1 springSettings:(id)arg2  { %log; } //could be called when PIP gesture ends
// -(int)processIdentifierForContainerViewController:(id)arg0  { %log; int r = %orig; NSLog(@" = %d", r); return r; }
// -(id)bundleIdentifierForContainerViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(id)scenePersistenceIdentifierForContainerViewController:(id)arg0  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
// -(void)stashTabVisibilityPolicyProviderDidUpdatePolicy:(id)arg0  { %log; %orig; }
// -(void)_layoutMenuButton { %log; %orig; }
// -(void)_createOrInvalidateStashTabVisibilityPolicyProvider { %log; %orig; }
// %end

PGPictureInPictureViewController *PGPVC;

%hook PGPictureInPictureViewController

-(void)viewDidLoad {
	%log;
	PGPVC = self;
	%orig;
}

%end

%hook SBPIPInteractionController

-(void)handlePanGesture:(id)arg1 {
	// NSLog(@"handle pan gesture, this is arg1: %@", arg1);
	UIPanGestureRecognizer *panGesture = arg1;
	CGPoint panGestureLocation = [panGesture locationInView:panGesture.view]; 
	NSLog(@"handlePanGesture called: %@", NSStringFromCGPoint(panGestureLocation));
	PGPVC.view.center = panGestureLocation;

	// CGPoint translation = [panGesture translationInView:panGesture.view];


	// if (panGestureLocation.x < 50) {
	// 	%orig;
	// } else {
	// 	PGPVC.view.center = panGestureLocation;
	// }
}

// - (UIView *)targetView { %log; UIView * r = %orig; NSLog(@" = %@", r); return r; }
// - (CGSize)containerSize { %log; CGSize r = %orig; NSLog(@" = {%g, %g}", r.width, r.height); return r; }
// - (CGRect)initialFrame { %log; CGRect r = %orig; NSLog(@" = {{%g, %g}, {%g, %g}}", r.origin.x, r.origin.y, r.size.width, r.size.height); return r; }
// - (CGFloat)preferredScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (CGFloat)currentNormalizedScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (CGFloat)stashProgress { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// - (NSInteger)orientation { %log; NSInteger r = %orig; NSLog(@" = %ld", (long)r); return r; }
// - (SBPIPContentViewLayoutSettings *)layoutSettings { %log; SBPIPContentViewLayoutSettings * r = %orig; NSLog(@" = %@", r); return r; }
// - (NSUInteger)canonicalPosition { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
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
// -(void)handlePinchGesture:(id)arg0  { %log; %orig; }
// -(CGFloat)_currentScale { %log; CGFloat r = %orig; NSLog(@" = %f", r); return r; }
// -(BOOL)isPinching { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isPinching { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)isRotating { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isPanning { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(BOOL)_isInteractive { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)settings:(id)arg0 changedValueForKeyPath:(id)arg1  { %log; %orig; }
// -(void)_removeGestureRecognizers { %log; %orig; }
// -(void)handlePanGesture:(id)arg0  { %log; %orig; }
// -(BOOL)gestureRecognizerShouldBegin:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)dealloc { %log; %orig; }
// -(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(struct CGPoint )_currentPosition { %log; struct CGPoint  r = %orig; return r; }
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
-(struct CGPoint )_closestToDefaultCornersPosition { %log; struct CGPoint  r = %orig; NSLog(@" = %@", NSStringFromCGPoint(r)); return r; }
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
-(void)_handleGestureBeganState:(id)arg0  { %log; %orig; }
-(void)_handleGestureEndedState:(id)arg0  { %log; %orig; }
// -(void)_adjustContentViewAnchorPointForGestureRecognizer:(id)arg0  { %log; %orig; }
// -(void)__handleGesturesEndedState:(id)arg0  { %log; %orig; }
// -(void)_resetAnchorPoint { %log; } //maybe causing to move to sides
// -(UIEdgeInsets)_inFlightHitTestPadding { %log; struct UIEdgeInsets  r = %orig; NSLog(@"%@", NSStringFromUIEdgeInsets(r)); return r; } //maybe causing to move to sides
// -(NSUInteger)__traitsForGesturesReasons:(NSUInteger)arg0  { %log; NSUInteger r = %orig; NSLog(@" = %lu", (unsigned long)r); return r; }
// -(BOOL)_isSizeAffectedByLayoutReasons:(NSUInteger)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
// -(void)_sizeChangeBeganWithBehavior:(int)arg0  { %log; %orig; }
// -(void)_sizeChangeEnded { %log; %orig; }
// // -(BOOL)_isGestureRecognizerRecognizing:(id)arg0  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
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
