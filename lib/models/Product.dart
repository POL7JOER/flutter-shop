import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Рубашка ELISABETTA FRANCHI",
    price: 15995,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Футболка ELISABETTA FRANCHI",
    price: 9899,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Свитшот ELISABETTA FRANCHI",
    price: 19000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Футболка ELISABETTA FRANCHI",
    price: 10999,
    bgColor: const Color(0xFFEEEEED),
  ),
];
