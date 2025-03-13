// health_monitoring.dart
abstract class HealthMonitor {
  void analyzeData();
}

class HeartRateMonitor extends HealthMonitor {
  @override
  void analyzeData() {
    print('Analyzing heart rate data with AI: Normal range detected (60-100 bpm)');
  }
}

class SleepTracker extends HealthMonitor {
  @override
  void analyzeData() {
    print('Analyzing sleep data with AI: 7 hours detected, quality: Good');
  }
}

void main() {
  print("Task 3: AI-Powered Health Monitoring");
  HealthMonitor heartMonitor = HeartRateMonitor();
  HealthMonitor sleepTracker = SleepTracker();
  heartMonitor.analyzeData();
  sleepTracker.analyzeData();
}