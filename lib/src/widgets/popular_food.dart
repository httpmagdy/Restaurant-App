import 'package:flutter/material.dart';
import './custom_text.dart';
import './commons.dart';
import '../models/popular.dart';

class PopularFood extends StatelessWidget {
  final List<Popular> popularData = [
    Popular('images/1.jpg', 'Pasta with ham', 79.00, 4.9, 200),
//    Popular('images/2.jpg', 'Griled salmon', 50.00, 4.9, 200),
    Popular('images/3.jpg', 'Griled salmon', 76.50, 4.9, 200),
    Popular('images/4.jpeg', 'Griled salmon', 22.00, 4.9, 200),
    Popular('images/5.jpg', 'Griled salmon', 30.00, 4.9, 200),
  ];

  final double _heightBox = 85.0 + _heightImage;
  static final double _heightImage = 170.0;
  final double _widthBoxAndImage = 185.0; // important: Min Width 155 PX.

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _heightBox,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularData.length,
          itemBuilder: (ctx, i) => Container(
            margin: EdgeInsets.all(10),
            width: _widthBoxAndImage,
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(color: grey[300], blurRadius: 4, offset: Offset(1, 1)),
            ]),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      popularData[i].image,
                      height: _heightImage,
                      width: _widthBoxAndImage,
                    ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                          icon: Icon(Icons.favorite, color: red, size: 19),
                          onPressed: () {},
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomText(text: popularData[i].title),
                      Icon(Icons.add_shopping_cart, color: red, size: 18),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CustomText(
                              text: popularData[i].reat.toString(),
                              size: 11,
                              color: grey),
                          const SizedBox(width: 3.0),


                          _iconStar(),
                          _iconStar(),
                          _iconStar(),
                          _iconStar(),
                          _iconStar(color: grey),

                          const SizedBox(width: 3.0),
                          CustomText(
                              text: '(${popularData[i].reviw.toString()})',
                              color: grey,
                              size: 11),
                        ],
                      ),
                      CustomText(
                          text: '\$${popularData[i].price}',
                          weight: FontWeight.w500,
                          size: 13)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }


 _iconStar({Color color}) {
    return Icon(Icons.star, color: color ?? red, size: 11);
  }

}
