class car{
  String brand;
  String model;
  int year;
  car(this.brand,this.model,this.year);
}

void main(){
  car mycar = car("Toyota","Corolla",2020);
  print("Brand: ${mycar.brand}, Model: ${mycar.model}, Year: ${mycar.year}");
}


// class Animal{
//   void makesound(){
//     print("some generic animal sound");
//   }
// }
// class Dog extends Animal{
//   void makesound(){
//     print("Bark");

//   }
// }

// void main(){
//    Dog dog = Dog();
//   dog.makesound();
// }


// class Library{
//   List<Map<String, dynamic>> books =[];

//   void addbook(String title,String author,int year){
//     Map<String, dynamic> book={"title":title,"author":author,"year":year};
//     books.add(book);
//   }
//   void printbooks(){
//     for(var book in books){
//       print("title: ${book["title"]}, Author: ${book["author"]}, Year: ${book["year"]}");
//     }
    
//   }
// }
// void main(){
//   Library mylib = Library();
//   mylib.addbook("1984","George Orwell", 1949);
//   mylib.addbook("To Kill a Mockingbird","Harper Lee", 1960);
//   mylib.printbooks();
// }