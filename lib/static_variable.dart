import 'package:flutter/cupertino.dart';

class StaticVariable {
  // ignore: prefer_typing_uninitialized_variables
  static var mainWidth, mainHeight;
  static bool checkStore = false;

  // ignore: avoid_print
  void test() => print("hello world");
  static final fieldText = TextEditingController();

  static void clearText() {
    fieldText.clear();
  }

  static List<String> listPerson = [''
      'assets/images/1.jpg',
    'assets/images/2.jpeg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ];
  static List<String>listProduct = [
    'assets/images/1-product.jpg',
    'assets/images/2-product.jpg',
    'assets/images/3-product.jpg',
    'assets/images/4-product.jpg',
    'assets/images/5-product.jpg',
    'assets/images/6-product.jpg',
  ];
  static List<String> towns = [
    "Villes",
    'Casablanca',
    'Fez',
    'Tangier',
    'Marrakesh',
    'Salé',
    'Meknes',
    'Rabat',
    'Oujda',
    'Kenitra',
    'Agadir',
    'Tetouan',
    'Temara',
    'Safi',
    'Mohammedia',
    'Khouribga',
    'El Jadida',
    'Beni Mellal',
    'Aït Melloul',
    'Nador',
    'Dar Bouazza',
    'Taza',
    'Settat',
    'Berrechid',
    'Khemisset',
    'Inezgane',
    'Ksar El Kebir',
    'Larache',
    'Guelmim',
    'Khenifra',
    'Berkane',
    'Taourirt',
    'Bouskoura',
    'Fquih Ben Salah',
    'Dcheira El Jihadia',
    'Oued Zem',
    'El Kelaa Des Sraghna',
    'Sidi Slimane',
    'Errachidia',
    'Guercif',
    'Oulad Teima',
    'Ben Guerir',
    'Tifelt',
    'Lqliaa',
    'Taroudant',
    'Sefrou',
    'Essaouira',
    'Fnideq',
    'Sidi Kacem',
    'Tiznit',
    'Tan-Tan',
    'Ouarzazate',
    'Souk El Arbaa',
    'Youssoufia',
    'Lahraouyine',
    'Martil',
    'Ain Harrouda',
    'Suq as-Sabt Awlad an-Nama',
    'Skhirat',
    'Ouazzane',
    'Benslimane',
    'Al Hoceima',
    'Beni Ansar',
    "M'diq",
    'Sidi Bennour',
    'Midelt',
    'Azrou',
    'Drargua',
    "Autre"
  ];
  static List<String> categories = [
    "Categories",
    "Chiens",
    "Chats",
    "Oiseaux",
    "Poissons",
    "Vaches",
    "Mouton",
    "Chevaux",
    "Poneys",
    "Ânes",
    "chameaux",
    "Mules",
    "Animaux de terrarium",
    "Petits Mammiféres",
    "Oiseaux de basse-cour",
    "Autre"
  ];
  static List<String> store =[
    "détails de la boutique",
    "Accessoires",
    "Décoration",
    "Aquariums",
    "Hygiéne",
    "Aliments",
    "Toilettage",
    "Confort",
    "Transport",
    "Vêtements",
    "Friandises",
    "Jouets",
    "Éducation",
    "Habitat",

  ];
}