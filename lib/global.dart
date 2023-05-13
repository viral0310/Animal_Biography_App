import 'dart:ui';

import 'model/animal_model_class_page.dart';

class Global {
  static Color color = const Color(0xffC19E82);

  static List<Data> detailsOfData = [
    Data(time: "Week", price: "1.99"),
    Data(time: "1 Month", price: "4.39"),
    Data(time: "3 Month", price: "9.99"),
    Data(time: "6 Month", price: "13"),
  ];
  static String category = "";
  static List<Animal> animalData = [
    Animal(
      name: "Python family",
      description: "Pythonidae",
      category: "Snake",
    ),
    Animal(
      name: "Cobras",
      description: "Naja",
      category: "Snake",
    ),
    Animal(
      name: "German Shepherd",
      description: "German Shepherd",
      category: "Dog",
    ),
    Animal(
      name: "Siberian Husky",
      description: "Husky; Sibe",
      category: "Dog",
    ),
    Animal(
      name: "African elephant",
      description: "Loxodonta",
      category: "Elephant",
    ),
    Animal(
      name: "Elephant",
      description: "Large Rounded Ears",
      category: "Elephant",
    ),
    Animal(
      name: "Lion1",
      description: "Panthera leo",
      category: "Lion",
    ),
    Animal(
      name: "Lion King",
      description: "King of Animal",
      category: "Lion",
    ),
  ];
}
