import 'package:flutter/material.dart';
import '../../src/models/category.dart';
import '../../src/widgets/commons.dart';
import '../../src/widgets/custom_text.dart';

class Categories extends StatelessWidget {

  final List<Category> categoriesList= [
    Category(image: 'images/sandwich.png', title: 'Sandwich'),
    Category(image: 'images/salad.png', title: 'Salad'),
    Category(image: 'images/fish.png', title: 'Fish'),
    Category(image: 'images/pint.png', title: 'Pint'),
    Category(image: 'images/ice-cream.png', title: 'Ice-cream'),
    Category(image: 'images/steak.png', title: 'Steak'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 65.0,
                width: 65.0,
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: red[50],
                      offset: Offset(4, 6),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Image.asset(
                  categoriesList[i].image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: CustomText(text: categoriesList[i].title, size: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
