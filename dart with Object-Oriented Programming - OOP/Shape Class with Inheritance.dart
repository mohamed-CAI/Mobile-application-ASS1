import 'dart:math'; // Import math library for pi value

// Define the base Shape class
class Shape {
  // Default method to calculate area (returns 0 for base class)
  double area() {
    return 0.0;
  }
}

// Define the Circle subclass
class Circle extends Shape {
  double radius; // Property for the circle's radius

  Circle(this.radius); // Constructor to initialize radius

  @override
  double area() {
    return pi * radius * radius; // Area of circle: π * r^2
  }
}

// Define the Rectangle subclass
class Rectangle extends Shape {
  double width;  // Property for the rectangle's width
  double height; // Property for the rectangle's height

  Rectangle(this.width, this.height); // Constructor to initialize width and height

  @override
  double area() {
    return width * height; // Area of rectangle: width * height
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(5.0);         // Circle with radius 5
  Rectangle rectangle = Rectangle(4.0, 6.0); // Rectangle with width 4 and height 6
  // Print the areas
  print('Area of circle: ${circle.area()}');
  print('Area of rectangle: ${rectangle.area()}');
}