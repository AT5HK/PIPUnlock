@interface SBPIPInteractionController : NSObject
    -(CGPoint)_currentPosition;
    - (void)setStashed:(BOOL)stashed;

@end

@interface SBPIPWindow : UIView
-(id)_pipWindowRootVC;
@property (nonatomic,readonly) NSArray * containerViewControllers;
@end

@interface SBPIPWindowRootViewController : UIViewController
@end

//## testing the bottom headers

@interface PGPictureInPictureViewController : UIViewController
@end

@interface SBPIPContainerViewController : UIViewController
@end

@interface SBPIPContentViewLayoutSettings 
@end

@interface _UIHyperregionUnion : NSObject
@property (copy, nonatomic, setter=_setRegions:) NSArray *_regions; // ivar: __regions
@end

@interface _UIHyperpoint : NSObject
// @property (readonly, nonatomic) *CGFloat _value;
@end

@interface _UIHyperrectangle: NSObject
@property (nonatomic,readonly) const double* _minimumPoint; 
@property (nonatomic,readonly) const double* _maximumPoint;
@end

typedef struct SBPIPPositionInteractionStateContext {
    BOOL isStashed;
    BOOL isInteractive;
    BOOL hasActiveGesture;
    BOOL isFreelyPositionable;
    CGPoint projectedPosition;
    CGPoint initialPosition;
    CGPoint currentPosition;
    CGFloat currentPositionStashProgress;
    CGFloat projectedPositionStashProgress;
} SBPIPPositionInteractionStateContext;
// template <typename Type_>
// static inline Type_ &MSHookIvar(id self, const char *name);