import 'package:flutter/material.dart';
import 'package:shoes_shop/pages/blue_shoes.dart';
import 'package:shoes_shop/pages/red_shoes.dart';

class TabViewOne extends StatefulWidget {
  const TabViewOne({super.key});

  @override
  State<TabViewOne> createState() => _TabViewOneState();
}

class _TabViewOneState extends State<TabViewOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.red,
              image: "assets/images/nike.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.blue,
              image: "assets/images/nike2.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.red,
              image: "assets/images/nike.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.blue,
              image: "assets/images/nike2.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.red,
              image: "assets/images/nike.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
            shoesCard(
              bgColor: Colors.blue,
              image: "assets/images/nike2.png",
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget shoesCard({
    required Color bgColor,
    required String image,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return bgColor == Colors.red
                  ? const RedShoes()
                  : const BlueShoes();
            },
          ),
        );
      },
      child: Container(
        height: 240.0,
        width: 360.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: bgColor,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 30.0,
              top: 30.0,
              left: 50.0,
              right: 50.0,
              child: SizedBox(
                height: 200.0,
                width: 200.0,
                child: ImageFiltered(
                  imageFilter: ColorFilter.mode(
                    bgColor,
                    BlendMode.overlay,
                  ),
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 20.0,
              left: 20.0,
              child: Text(
                "Sneakers",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              top: 65.0,
              left: 20.0,
              child: Text(
                "Nike",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Positioned(
              bottom: 4.0,
              left: 20.0,
              child: Text(
                r"100$",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 20.0,
              right: 20.0,
              child: ClipOval(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
