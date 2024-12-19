#import "ScreenshotControl.h"
#import <React/RCTBridgeModule.h>
#import <UIKit/UIKit.h>

@implementation ScreenshotControl

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(disableScreenshot)
{
    if (@available(iOS 11.0, *)) {
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        window.layer.masksToBounds = YES;
        window.layer.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1].CGColor;
    }
}

RCT_EXPORT_METHOD(enableScreenshot)
{
    if (@available(iOS 11.0, *)) {
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        window.layer.backgroundColor = [UIColor clearColor].CGColor;
    }
}

@end
