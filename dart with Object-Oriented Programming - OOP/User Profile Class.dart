// Define the User class
class User {
  String name;   // Property for the user's name
  String email;  // Property for the user's email
  int age;       // Property for the user's age

  // Constructor to initialize the properties
  User(this.name, this.email, this.age);

  // Method to display user information
  void displayInfo() {
    print('Name: $name');
    print('Email: $email');
    print('Age: $age');
  }
}

void main() {
  // Create an instance of the User class with sample data
  User user = User('Ahmed Mohammed', 'ahmed@example.com', 25);
  // Call the method to display the user's information
  user.displayInfo();
}