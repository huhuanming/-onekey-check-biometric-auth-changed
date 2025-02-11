#import "CheckBiometricAuthChanged.h"

@implementation CheckBiometricAuthChanged
RCT_EXPORT_MODULE()

- (BOOL)check {
     BOOL changed = NO;

    LAContext *context = [[LAContext alloc] init];
    NSError *error = nil;


    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        [context canEvaluatePolicy:LAPolicyDeviceOwnerAuthentication error:nil];
        NSData *domainState = [context evaluatedPolicyDomainState];

        // load the last domain state from touch id
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSData *oldDomainState = [defaults objectForKey:@"domainTouchID"];

        if (oldDomainState) {
            // check for domain state changes
            changed = ![oldDomainState isEqual:domainState];
        }

        // save the domain state that will be loaded next time
        [defaults setObject:domainState forKey:@"domainTouchID"];
        [defaults synchronize];
    }
    return changed
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeCheckBiometricAuthChangedSpecJSI>(params);
}

@end
