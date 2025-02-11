package com.onekey.checkbiometricauthchanged

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.module.annotations.ReactModule

@ReactModule(name = CheckBiometricAuthChangedModule.NAME)
class CheckBiometricAuthChangedModule(reactContext: ReactApplicationContext) :
  NativeCheckBiometricAuthChangedSpec(reactContext) {

  override fun getName(): String {
    return NAME
  }

  // Example method
  // See https://reactnative.dev/docs/native-modules-android
  override fun check(): Boolean {
    return false
  }

  companion object {
    const val NAME = "CheckBiometricAuthChanged"
  }
}
