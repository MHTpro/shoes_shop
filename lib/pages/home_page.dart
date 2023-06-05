import 'package:flutter/material.dart';
import 'package:shoes_shop/pages/tab_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,

        //appbar
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Shoes",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          actions: const <Widget>[
            Icon(
              Icons.notifications_none,
              size: 30.0,
              color: Colors.black,
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: Colors.black,
            ),
            SizedBox(
              width: 6.0,
            ),
          ],

          //tabbar
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            indicator: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30.0),
            ),
            indicatorPadding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            tabs: const <Widget>[
              Text(
                "All",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Nike",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Football",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Soccer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: <Widget>[
            TabViewOne(),
            TabViewOne(),
            TabViewOne(),
            TabViewOne(),
          ],
        ),
      ),
    );
  }
}
