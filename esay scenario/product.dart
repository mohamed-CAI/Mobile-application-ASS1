// Define the Product class
class Product {
  String name;    // Property for the product's name
  double price;   // Property for the product's price
  String category;// Property for the product's category

  // Default constructor
  Product(this.name, this.price, this.category);

  // Named constructor for discounted products
  Product.discounted(this.name, this.price, this.category) {
    price = price * 0.8; // Apply 20% discount
  }

  // Method to display product details
  void displayDetails() {
    print('Name: $name, Price: $price, Category: $category');
  }
}

void main() {
  // Create instances using default and named constructors
  Product regularProduct = Product('Laptop', 1000.0, 'Electronics');
  Product discountedProduct = Product.discounted('Phone', 500.0, 'Electronics');

  // Display details
  regularProduct.displayDetails();
  discountedProduct.displayDetails();
}