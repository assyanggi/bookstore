import 'package:flutter/material.dart';
import 'package:listview_anggi/rating_box.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image}): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Price: Rp. " + this.price.toString()),
                    RatingBox(),
                  ],
                ),
              ),
            )
          ]
        )
      ),
    );
  }
}