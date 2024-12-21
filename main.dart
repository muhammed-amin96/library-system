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

void main() {}
