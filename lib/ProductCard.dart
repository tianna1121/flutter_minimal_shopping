import 'package:flutter/material.dart';

import 'CustomIcon.dart';

class ProductCard extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  ProductCard(
      this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: Color(cardColor),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.2),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Image.asset(
            imgUrl,
            width: 281.0,
            height: 191.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 25.0, fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(CustomIcons.favorite),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(
                      previousPrice,
                      style: TextStyle(
                          color: Color(0xFFFEB0BA),
                          fontSize: 16.0,
                          fontFamily: 'Helvetica'),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      price,
                      style: TextStyle(fontSize: 28.0, fontFamily: 'Helvetica'),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(CustomIcons.cart),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
