import { Text, View, StyleSheet } from 'react-native';
import { checkBiometricAuthChanged } from '@onekey/check-biometric-auth-changed';

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Result: {checkBiometricAuthChanged()}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
