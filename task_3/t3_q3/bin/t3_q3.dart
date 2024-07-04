class Library{
  List<Map<String, dynamic>> books =[];

  void addbook(String title,String author,int year){
    Map<String, dynamic> book={"title":title,"author":author,"year":year};
    books.add(book);
  }
  void printbooks(){
    for(var book in books){
      print("title: ${book["title"]}, Author: ${book["author"]}, Year: ${book["year"]}");
    }
    
  }
}
void main(){
  Library mylib = Library();
  mylib.addbook("1984","George Orwell", 1949);
  mylib.addbook("To Kill a Mockingbird","Harper Lee", 1960);
  mylib.printbooks();
}