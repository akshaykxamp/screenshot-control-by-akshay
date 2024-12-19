import { NativeModules } from 'react-native';

const { ScreenshotControl } = NativeModules;

export const disableScreenshot = () => {
  ScreenshotControl.disableScreenshot();
};

export const enableScreenshot = () => {
  ScreenshotControl.enableScreenshot();
};
