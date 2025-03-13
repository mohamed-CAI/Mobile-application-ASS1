// Define the Employee class
class Employee {
  String name;       // Property for the employee's name
  String position;   // Property for the employee's position
  double _salary;    // Private property for salary

  // Constructor to initialize properties
  Employee(this.name, this.position, this._salary);

  // Getter for salary
  double get salary => _salary;

  // Setter for salary with validation
  set salary(double value) {
    if (value >= 0) {
      _salary = value;
    } else {
      print('Error: Salary cannot be negative. Setting to 0.');
      _salary = 0;
    }
  }

  // Method to display employee details
  void displayDetails() {
    print('Name: $name, Position: $position, Salary: $_salary');
  }
}

void main() {
  // Create an instance of Employee
  Employee emp = Employee('Ahmed Mohammed', 'Developer', 5000.0);
  emp.displayDetails();           // Display initial details
  emp.salary = -100.0;            // Try to set negative salary
  emp.displayDetails();           // Display updated details
  emp.salary = 6000.0;            // Set valid salary
  emp.displayDetails();           // Display updated details
}