class Animal{
  void makesound(){
    print("some generic animal sound");
  }
}
class Dog extends Animal{
  void makesound(){
    print("Bark");

  }
}

void main(){
   Dog dog = Dog();
  dog.makesound();
}