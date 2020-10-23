import 'package:flutter/material.dart';
import 'package:listview_anggi/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = "Book Store";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(menus.length, (index) {
            return Center(
                child: MenuCard(menu: menus[index])
            );
          }),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "Buku Umum", icon: "assets/buku1.jpg"),
  const Menu(title: "Novel", icon: "assets/buku2.jpg"),
  const Menu(title: "Komik", icon: "assets/buku3.jpg"),
  const Menu(title: "Majalah", icon: "assets/buku4.jpg"),
  const Menu(title: "Buku Anak", icon: "assets/buku5.jpg"),
];

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductList()),
          );
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                  child: Image.asset(
                    menu.icon,
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.contain,
                  )),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(
                padding: EdgeInsets.all(5),
              ),
            ]),
      ),
    );
  }
}
