import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resta_shop/src/widgets/categories.dart';
import 'package:resta_shop/src/widgets/custom_text.dart';
import 'package:resta_shop/src/widgets/popular_food.dart';
import '../../src/widgets/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomText(
                    text: 'What would you like to eat?',
                    size: 17.0,
                  ),
                  Stack(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_none,
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                      Positioned(
                        right: 12.0,
                        top: 10.0,
                        child: Container(
                          width: 13.0,
                          height: 13.0,
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.search, color: red.shade400),
                    onPressed: () {},
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Find a food or Restaurent',
                        border: InputBorder.none),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.filter_list, color: red.shade400),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Categories(),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 3.0),
              child: CustomText(text: 'Popular Food', size: 20.0),
            ),
            PopularFood(),

          ],
        ),
      ),
    );
  }
}
