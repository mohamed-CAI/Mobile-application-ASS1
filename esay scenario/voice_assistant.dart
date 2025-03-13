// Define the base VoiceAssistant class
abstract class VoiceAssistant {
  void listen();    // Method to listen to user input
  void respond();   // Method to provide a response
}

// Subclass for GoogleAssistant
class GoogleAssistant extends VoiceAssistant {
  @override
  void listen() {
    print('Google Assistant is listening...');
  }

  @override
  void respond() {
    print('Google Assistant: Okay, I’ll handle that for you!');
  }
}

// Subclass for SiriAssistant
class SiriAssistant extends VoiceAssistant {
  @override
  void listen() {
    print('Siri is listening...');
  }

  @override
  void respond() {
    print('Siri: I’m on it! Let me know if you need more help.');
  }
}

void main() {
  // Create instances of voice assistants
  VoiceAssistant google = GoogleAssistant();
  VoiceAssistant siri = SiriAssistant();

  // Test each assistant
  google.listen();
  google.respond();
  siri.listen();
  siri.respond();
}