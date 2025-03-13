// Define the Book class
class Book {
  String title;   // Property for the book's title
  String author;  // Property for the book's author
  String isbn;    // Property for the book's ISBN

  // Constructor to initialize properties
  Book(this.title, this.author, this.isbn);

  // Method to display book details
  void displayDetails() {
    print('Title: $title, Author: $author, ISBN: $isbn');
  }
}

void main() {
  // Create instances of Book
  Book book1 = Book('Dart for Beginners', 'John Doe', '123-4567890123');
  Book book2 = Book('Flutter Essentials', 'Jane Smith', '987-6543210987');

  // Display details of books
  book1.displayDetails();
  book2.displayDetails();
}