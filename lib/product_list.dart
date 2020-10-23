import 'package:flutter/material.dart';
import 'package:listview_anggi/product_box.dart';

class ProductList extends StatelessWidget {
  ProductList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Anonimus Girl",
                description: "GREER HENDRICK",
                price: 78000,
                image: "an_anonymous_girl_by_greer_hendricks.jpg"),
            ProductBox(
                name: "Maid",
                description: "STEPANIE LAND",
                price: 150000,
                image: "maid_by_stepanie_land.jpg"),
            ProductBox(
                name: "The Age of Light",
                description: "WHITNEY SCHARER",
                price: 80000,
                image: "the_age_of_light_by_whitney_scharer.jpg"),
            ProductBox(
                name: "The Dreamers",
                description: "KAREN THOMPSON",
                price: 85000,
                image: "the_dreamers_by_karen_thompson.jpg"),
            ProductBox(
                name: "The Last Romantics",
                description: "TARA CONKLIN",
                price: 60000,
                image: "the_last_romantics_by_tara_conklin.jpg"),
            ProductBox(
                name: "The Lost Girls of Paris",
                description: "PAM JENOFF",
                price: 60000,
                image: "the_lost_girls_of_paris_by_pam_jenoff.jpg"),
          ]),
    );
  }
}
