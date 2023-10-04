#import <UIKit/UIKit.h>

@interface SBHomeScreenViewController : UIViewController
@end

%hook SBHomeScreenViewController

-(void)viewDidLoad {
	self.view.backgroundColor = UIColor.greenColor;
}

%end

%hook SBPIPWindow
-(void)addActiveOrientationObserver:(id)arg1 {
	// do nothing
	NSLog(@"called from: addActiveOrientationObserver:(id)arg1");
	%orig;
}

%end

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

%hook SBPIPInteractionController
-(void)_handleGestureEndedState:(id)arg1 {
	//do nothing
	NSLog(@"the gesture ended, this is arg1: %@", arg1);
}

// -(void)_handleGestureBeganState:(id)arg1 {
// 	//do nothing
// 	NSLog(@"the gesture began, this is arg1: %@", arg1);
// }

// -(void)handlePanGesture:(id)arg1 {
// 	NSLog(@"handle pan gesture, this is arg1: %@", arg1);
// }
%end

%ctor {
	NSLog(@"this is initialized PGPUnlock.dylib");
}
