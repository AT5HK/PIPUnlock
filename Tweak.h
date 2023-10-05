@interface SBPIPInteractionController : NSObject
    -(CGPoint)_currentPosition;
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


// template <typename Type_>
// static inline Type_ &MSHookIvar(id self, const char *name);