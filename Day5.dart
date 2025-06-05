class Author {
  String fullName;
  String background;

  Author(this.fullName, this.background);
}

class Book {
  String bookTitle;
  Author author;
  bool isTaken = false;

  Book(this.bookTitle, this.author);
}

abstract class LibraryUser {
  String memberName;
  int memberId;

  LibraryUser(this.memberName, this.memberId);

  final List<Book> _borrowedBook = [];

  List<Book> get borrowedBook => _borrowedBook;

  void borrowBook(Book book);
  void returnBook(Book book);
  void displayInfo();
}

class Student extends LibraryUser {
  Student(String name, int id) : super(name, id);

  @override
  void borrowBook(Book book) {
    if (!book.isTaken) {
      borrowedBook.add(book);
      book.isTaken = true;
      print('Student Name:\n $memberName successfully borrowed "${book.bookTitle}"');
    } else {
      print('Sorry, "${book.bookTitle}" is currently unavailable.');
    }
  }

  @override
  void returnBook(Book book) {
    if (borrowedBook.contains(book)) {
      borrowedBook.remove(book);
      book.isTaken = false;
      print('$memberName returned "${book.bookTitle}"');
    } else {
      print('Cannot return "${book.bookTitle}" — not found in records for $memberName.');
    }
  }

  @override
  void displayInfo() {
    print('Student Info — \nName: $memberName, \nID: $memberId');
  }
}

class Staff extends LibraryUser {
  Staff(String name, int id) : super(name, id);

  @override
  void borrowBook(Book book) {
    if (!book.isTaken) {
      borrowedBook.add(book);
      book.isTaken = true;
      print('$memberName borrowed "${book.bookTitle}"');
    } else {
      print('"${book.bookTitle}" has already been borrowed.');
    }
  }

  @override
  void returnBook(Book book) {
    if (borrowedBook.remove(book)) {
      book.isTaken = false;
      print('$memberName returned "${book.bookTitle}"');
    } else {
      print('Error: "${book.bookTitle}" was not borrowed by $memberName.');
    }
  }

  @override
  void displayInfo() {
    print('Staff Info — \nName: $memberName, \nID: $memberId');
  }
}

void main() {
  Author author = Author('Dr. Joy E. U..', 'OOP expert and author');
  Book pub = Book('OOP in programing', author);

  Student student = Student('Usman A.', 1001);
  Staff staff = Staff('Dr. Joy E. U.', 2002);

  student.borrowBook(pub);
  student.displayInfo();

  staff.borrowBook(pub);
  staff.displayInfo();
}
