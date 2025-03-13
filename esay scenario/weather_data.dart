// Define the WeatherData class
class WeatherData {
  double _temperature; // Private property for temperature
  double _humidity;    // Property for humidity
  double _windSpeed;   // Property for wind speed

  // Constructor to initialize properties
  WeatherData(this._humidity, this._windSpeed, this._temperature);

  // Getter for temperature
  double get temperature => _temperature;

  // Setter for temperature with validation
  set temperature(double value) {
    if (value >= -50 && value <= 50) {
      _temperature = value;
    } else {
      print('Error: Temperature must be between -50°C and 50°C. Setting to 0°C.');
      _temperature = 0;
    }
  }

  // Method to display weather insights
  void displayInsights() {
    print('Weather Insights: Temp: $_temperature°C, Humidity: $_humidity%, Wind: $_windSpeed m/s');
  }
}

void main() {
  // Create an instance of WeatherData
  WeatherData weather = WeatherData(60.0, 5.0, 25.0);
  weather.displayInsights();       // Display initial insights
  weather.temperature = 60.0;      // Try invalid temperature
  weather.displayInsights();       // Display updated insights
  weather.temperature = 20.0;      // Set valid temperature
  weather.displayInsights();       // Display updated insights
}