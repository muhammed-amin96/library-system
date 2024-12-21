class Book {
  String bookId;
  String bookTitle;
  bool isBorrowed;
  Book(this.bookId, this.bookTitle, {this.isBorrowed = false});
  void displayBookInfo() {
    print("Book Id: $bookId\nBook Title: $bookTitle\nBorrowed: $isBorrowed");
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

  void borrowBook(String bookId, String userId) {
    //search for first element in books list that matches id given by user and if not found return empty book object
    var bookToBeBorrowed = books.firstWhere((b) => b.bookId == bookId,
        orElse: () => Book(" ", " "));
    if (bookToBeBorrowed.bookId == " ") {
      print("Book not found");
    } else if (bookToBeBorrowed.isBorrowed) {
      print("Book is already borrowed.");
    } else {
      bookToBeBorrowed.isBorrowed = true;
      print(
          "Book: ${bookToBeBorrowed.bookTitle} borrowed by user with id: $userId");
    }
  }

  void returnBook(String bookId) {
    var bookToBeReturned = books.firstWhere((b) => b.bookId == bookId,
        orElse: () => Book(" ", " "));
    if (bookToBeReturned.bookId == " ") {
      print("Book not found.");
    } else if (!bookToBeReturned.isBorrowed) {
      print("Book is not currently borrowed");
    } else {
      bookToBeReturned.isBorrowed = false;
      print("Book: ${bookToBeReturned.bookTitle} has been returned.");
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
  // Borrow Books
  library.borrowBook('B001', 'U001');
  library.borrowBook('B002', 'U002');
  library.borrowBook('B003', 'U001');
  library.borrowBook('B004', 'U001'); //book not found case
  library.borrowBook('B001', 'U001'); //book already borrowed case
  library.returnBook('B001');
  library.borrowBook('B001', 'U002');
  library.returnBook('B005');

  library.displayLibraryInfo();
}
