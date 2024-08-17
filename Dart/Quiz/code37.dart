class Book {
  String? title;
  String? author;
  int? year;

  Book(String title, String author, int year) {
    this.title = title;
    this.author = author;
    this.year = year;
  }

  void displayInfo() {
    print("title : $title, Author : $author, Year : $year");
  }
}

void main() {
  var myBook = Book("The catcher in the Rye","J.D. salinger", 1951);
  myBook.displayInfo();
  myBook.year = 2022;
  myBook.displayInfo();

}