// fraud_detection.dart
class FraudDetectedException implements Exception {
  String message;
  FraudDetectedException(this.message);
}

class TransactionValidator {
  bool isFraudulent(double amount) {
    return amount > 1000; // افتراض أن أي معاملة أكبر من 1000 مشبوهة
  }

  void validateTransaction(double amount) {
    if (isFraudulent(amount)) {
      throw FraudDetectedException('Fraud detected: Transaction amount $amount is suspicious!');
    } else {
      print('Transaction of $amount validated successfully.');
    }
  }
}

void main() {
  print("Task 6: AI-Powered Fraud Detection");
  TransactionValidator validator = TransactionValidator();
  try {
    validator.validateTransaction(500.0);
    validator.validateTransaction(1500.0);
  } catch (e) {
    if (e is FraudDetectedException) {
      print('Error: ${e.message}');
      print('Handling fraud gracefully: Transaction blocked and reported.');
    }
  }
}