#import <Foundation/Foundation.h>

%hook IGUnifiedVideoCollectionView
- (void)addGestureRecognizer:(id)recog {
    if ([NSStringFromClass([recog class]) containsString:@"Scroll"]) return;
    %orig;
}
%end

