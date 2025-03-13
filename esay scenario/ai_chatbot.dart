// Define the AIChatbot class
class AIChatbot {
  String name;        // Property for the chatbot's name
  String language;    // Property for the chatbot's language
  int responseTime;   // Property for response time in milliseconds

  // Constructor to initialize properties
  AIChatbot(this.name, this.language, this.responseTime);

  // Method to generate a response
  String generateResponse(String userInput) {
    if (userInput.toLowerCase().contains('hello')) {
      return 'Hello! How can I assist you today?';
    } else if (userInput.toLowerCase().contains('help')) {
      return 'Sure, I’m here to help! Please provide more details.';
    } else {
      return 'Sorry, I didn’t understand that.';
    }
  }
}

void main() {
  // Create an instance of AIChatbot
  AIChatbot chatbot = AIChatbot('Grok3', 'English', 500);
  print('Chatbot: ${chatbot.name}, Language: ${chatbot.language}, Response Time: ${chatbot.responseTime}ms');
  print('User: Hello');
  print('Bot: ${chatbot.generateResponse('Hello')}');
  print('User: Help me');
  print('Bot: ${chatbot.generateResponse('Help me')}');
  print('User: Random');
  print('Bot: ${chatbot.generateResponse('Random')}');
}