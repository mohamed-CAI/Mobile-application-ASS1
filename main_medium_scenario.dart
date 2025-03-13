import 'medium scenario/messaging.dart' as msg;
import 'medium scenario/personal_trainer.dart' as trainer;
import 'medium scenario/health_monitoring.dart' as health;
import 'medium scenario/resume_scanner.dart' as resume;
import 'medium scenario/smart_home.dart' as home;
import 'medium scenario/fraud_detection.dart' as fraud;

void main() {
  print("=== Medium Scenario ===");
  print("----- Running Messaging App Scenario -----");
  msg.main();

  print("----- Running Personal Trainer Scenario -----");
  trainer.main();

  print("----- Running Health Monitoring Scenario -----");
  health.main();

  print("----- Running Resume Scanner Scenario -----");
  resume.main();

  print("----- Running Smart Home Scenario -----");
  home.main();

  print("----- Running Fraud Detection Scenario -----");
  fraud.main();
}