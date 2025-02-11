import CheckBiometricAuthChanged from './NativeCheckBiometricAuthChanged';

export function checkBiometricAuthChanged(): boolean {
  return CheckBiometricAuthChanged.check();
}
