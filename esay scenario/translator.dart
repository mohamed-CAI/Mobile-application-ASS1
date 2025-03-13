// Define the Translator class
class Translator {
  String sourceLanguage; // Property for the source language
  String targetLanguage; // Property for the target language
  String text;          // Property for the text to translate

  // Default constructor
  Translator(this.sourceLanguage, this.targetLanguage, this.text);

  // Named constructor to detect language automatically
  Translator.detectLanguage(this.text)
      : sourceLanguage = 'Unknown', // Initialize with default value
        targetLanguage = 'English' { // Initialize with default value
    // Simulate AI language detection based on keywords
    if (text.toLowerCase().contains('hola') || text.toLowerCase().contains('adiós')) {
      sourceLanguage = 'Spanish';
    } else if (text.toLowerCase().contains('hello') || text.toLowerCase().contains('goodbye')) {
      sourceLanguage = 'English';
    } else if (text.toLowerCase().contains('bonjour') || text.toLowerCase().contains('au revoir')) {
      sourceLanguage = 'French';
    }
  }

  // Method to perform translation (simulated)
  String translate() {
    if (sourceLanguage == 'Unknown') {
      return 'Unable to translate: Language not detected.';
    }
    // Simulated translation logic
    if (sourceLanguage == 'Spanish' && text.toLowerCase().contains('hola')) {
      return 'Hello';
    } else if (sourceLanguage == 'English' && text.toLowerCase().contains('hello')) {
      return 'Bonjour';
    } else if (sourceLanguage == 'French' && text.toLowerCase().contains('bonjour')) {
      return 'Hello';
    }
    return 'Translation not available for this text.';
  }

  // Method to display translation details
  void displayTranslation() {
    print('Source Language: $sourceLanguage');
    print('Target Language: $targetLanguage');
    print('Original Text: $text');
    print('Translated Text: ${translate()}');
  }
}

void main() {
  // Using default constructor
  Translator translator1 = Translator('Spanish', 'English', 'Hola mundo');
  print('Using Default Constructor:');
  translator1.displayTranslation();
  print('------------------------');

  // Using named constructor to detect language
  Translator translator2 = Translator.detectLanguage('Hello world');
  print('Using Named Constructor (detectLanguage):');
  translator2.displayTranslation();
  print('------------------------');

  Translator translator3 = Translator.detectLanguage('Bonjour amis');
  print('Using Named Constructor (detectLanguage):');
  translator3.displayTranslation();
}