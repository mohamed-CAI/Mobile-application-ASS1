// medium_scenario/resume_scanner.dart
abstract class ResumeAnalyzer {
  void analyze();

  // Factory constructor داخل الكلاس ResumeAnalyzer
  factory ResumeAnalyzer(String jobField) {
    if (jobField.toLowerCase() == 'software engineer') {
      return SoftwareEngineerAnalyzer();
    } else if (jobField.toLowerCase() == 'marketing') {
      return MarketingAnalyzer();
    } else {
      throw ArgumentError('Unsupported job field');
    }
  }
}

class SoftwareEngineerAnalyzer implements ResumeAnalyzer {
  @override
  void analyze() {
    print('Analyzing resume for Software Engineer: Checking coding skills and projects');
  }
}

class MarketingAnalyzer implements ResumeAnalyzer {
  @override
  void analyze() {
    print('Analyzing resume for Marketing: Checking campaign experience and creativity');
  }
}

void main() {
  print("Task 4: AI-Driven Resume Scanner");
  ResumeAnalyzer softwareAnalyzer = ResumeAnalyzer('software engineer');
  ResumeAnalyzer marketingAnalyzer = ResumeAnalyzer('marketing');
  softwareAnalyzer.analyze();
  marketingAnalyzer.analyze();
}