class Book {
  String bookId;
  String bookTitle;
  bool isBooked;
  Book(this.bookId, this.bookTitle, {this.isBooked = false});
  void displayBookInfo() {
    print("Book Id: $bookId\nBook Title: $bookTitle\nBooked: $isBooked");
  }
}

class User {
  String userId;
  String userName;
  User(this.userId, this.userName);
  void displayUserInfo() {
    print("User Id: $userId\nUser Name: $userName");
  }
}

class Library {
  List<Book> books = [];
  List<User> users = [];
  void addBook(Book book) {
    books.add(book);
    print("Book: ${book.bookTitle} has been added.");
    print("====================================================");
  }

  void addUser(User user) {
    users.add(user);
    print("User: ${user.userName} has been added.");
    print("====================================================");
  }

  void displayLibraryInfo() {
    print("Library Books:");
    for (Book book in books) {
      book.displayBookInfo();
      print("====================================================");
    }
    print("====================================================");
    print("Library Users:");
    for (User user in users) {
      user.displayUserInfo();
      print("====================================================");
    }
  }
}

void main() {
  // Create Library instance
  Library library = Library();

  // Add books
  Book book1 = Book('B001', 'The Great Gatsby');
  Book book2 = Book('B002', '1984');
  Book book3 = Book('B003', 'To Kill a Mockingbird');
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // Add users
  User user1 = User('U001', 'Ahmed');
  User user2 = User('U002', 'Esraa');
  library.addUser(user1);
  library.addUser(user2);

  library.displayLibraryInfo();
}
