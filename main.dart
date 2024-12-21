class Book {
  String bookId;
  String bookTitle;
  bool isBooked;
  Book(this.bookId, this.bookTitle, {this.isBooked = false});
  void displayBookInfo() {
    print("Book Id: $bookId\nBook Title: $bookTitle\nBooked: $isBooked");
  }
}

void main() {}
