import 'esay scenario/ai_chatbot.dart' as chat;
import 'esay scenario/employee.dart' as emp;
import 'esay scenario/library_book.dart' as lib;
import 'esay scenario/product.dart' as prod;
import 'esay scenario/translator.dart' as trans;
import 'esay scenario/voice_assistant.dart' as voice;
import 'esay scenario/weather_data.dart' as wd;


void main() {
  print("=== Easy Scenario ===");

  print("----- Running Employee scenario -----");
  emp.main();

  print("----- Running Library Book scenario -----");
  lib.main();

  print("----- Running Product scenario -----");
  prod.main();

  print("----- Running Weather Data scenario -----");
  wd.main();

  print("----- Running AI Chatbot scenario -----");
  chat.main();


  print("----- Running Translator scenario -----");
  trans.main();

  print("----- Running Voice Assistant scenario -----");
  voice.main();
}