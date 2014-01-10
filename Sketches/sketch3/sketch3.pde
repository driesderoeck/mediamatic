class Person{
  //attributes
  String name;
  String favorite_food;
  int myWeight;
  
  Person(String name, String favorite_food, int myWeight){
    this.name = name;
    this.favorite_food = favorite_food;
    this.myWeight = myWeight;
  }
  
  String giveMeYourName(){
  return name;
  }
  
  void sayYeah(){
  println("yeeeeaaah");
  }
}

void setup(){
  Person peter = new Person("Peter","cheese",75);
  peter.sayYeah();
  
  Person xinxin = new Person("xinxin","spring rolls",55);
  println(xinxin.giveMeYourName());
}

