package com.screenshotcontrol;

import android.app.Activity;
import android.os.Build;
import android.view.WindowManager;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class ScreenshotControlModule extends ReactContextBaseJavaModule {

    public ScreenshotControlModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "ScreenshotControl";
    }

    @ReactMethod
    public void disableScreenshot() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            Activity activity = getCurrentActivity();
            if (activity != null) {
                activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);
            }
        }
    }

    @ReactMethod
    public void enableScreenshot() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            Activity activity = getCurrentActivity();
            if (activity != null) {
                activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE);
            }
        }
    }
}
