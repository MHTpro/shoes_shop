import 'package:flutter/material.dart';

class RedShoes extends StatefulWidget {
  const RedShoes({super.key});

  @override
  State<RedShoes> createState() => _RedShoesState();
}

class _RedShoesState extends State<RedShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                ClipOval(
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 140.0,
            ),
            SizedBox(
              height: 300.0,
              width: 390.0,
              child: Image.asset(
                "assets/images/nike.png",
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Sneakers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "size",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "40",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "42",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  "44",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  "46",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(340.0, 50.0),
              ),
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
