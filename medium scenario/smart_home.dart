// smart_home.dart
abstract class SmartDevice {
  void operate();
}

class SmartLight extends SmartDevice {
  @override
  void operate() {
    print('Smart Light: Adjusting brightness based on AI-predicted user preference (Warm light)');
  }
}

class SmartThermostat extends SmartDevice {
  @override
  void operate() {
    print('Smart Thermostat: Setting temperature to 22°C based on AI-predicted comfort level');
  }
}

class SmartSecurityCamera extends SmartDevice {
  @override
  void operate() {
    print('Smart Security Camera: Activating motion detection based on AI-predicted activity');
  }
}

void main() {
  print("Task 5: Smart Home Automation");
  SmartDevice light = SmartLight();
  SmartDevice thermostat = SmartThermostat();
  SmartDevice camera = SmartSecurityCamera();
  light.operate();
  thermostat.operate();
  camera.operate();
}