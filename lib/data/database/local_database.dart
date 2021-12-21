import 'dart:core';

import 'package:ecommerce_app_ui/data/models/brand.dart';
import 'package:ecommerce_app_ui/data/models/sortby.dart';

class LocalDatabase {

  static var imageList = [
    "assets/images/image_01.jpg",
    "assets/images/image_02.jpg",
    "assets/images/image_03.jpeg",
    "assets/images/image_04.jpeg",
  ];

  static var brandList = [
    Brand('adidas', false),
    Brand('adidas Originals', true),
    Brand('Blend', false),
    Brand('Boutique Moschino', false),
    Brand('Champion', false),
    Brand('Diesel', false),
    Brand('Jack & Jones', true),
    Brand('Naf Naf', false),
    Brand('Red Valentino', false),
    Brand('s.Oliver', true),
  ];

  static var sortByList = [
    SortBy('Popular', false),
    SortBy("Newest", false),
    SortBy('Custom review', false),
    SortBy('Price: lowest to high', true),
    SortBy('Price: highest to low', false),
  ];

  static var categoryList = [
    'Tops',
    'Shirts & Blouses',
    'Cardigans & Sweaters',
    'Knitwear',
    'Blazers',
    'Outerwear',
    'Pants',
    'Jeans',
    'Shorts',
    'Skirts',
    'Dresses',
  ];
}
