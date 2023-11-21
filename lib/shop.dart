import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'category.dart';
import 'splash.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/ecommerce/1.jpg',
                      ),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(.2)
                ], begin: Alignment.bottomRight)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const day19(),
                                        type: PageTransitionType.fade));
                              },
                              icon: const Icon(Icons.arrow_back_ios,
                                  color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shopping_bag,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Our New \nProducts',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'View More >>',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withOpacity(0.9)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1.0),
                        ),
                        Text('See All'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeCategory(
                              'assets/ecommerce/4.jpg', 'Shoes', 'shoes'),
                          makeCategory(
                              'assets/ecommerce/5.jpg', 'Clothes', 'clothes'),
                          makeCategory('assets/ecommerce/7.jpg', 'Fragrance',
                              'fragrance'),
                          makeCategory(
                              'assets/ecommerce/6.jpg', 'Beauty', 'beauty'),
                          makeCategory(
                              'assets/ecommerce/8.jpg', 'Styling', 'styling'),
                          makeCategory(
                              'assets/ecommerce/9.jpg', 'Bags', 'bags'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Black Friday',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1.0),
                        ),
                        Text('See All'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          BestSelling(
                              image: 'assets/ecommerce/10.jpg',
                              title: 'Decorations'),
                          BestSelling(
                              image: 'assets/ecommerce/11.jpg', title: 'Techs'),
                          BestSelling(
                              image: 'assets/ecommerce/12.jpg',
                              title: 'Kitchens'),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget makeCategory(image, title, tag) {
    return AspectRatio(
      aspectRatio: 2 / 2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Category(title: title, image: image, tag: tag)));
          },
          child: Material(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ], begin: Alignment.bottomRight),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BestSelling({
    image,
    title,
  }) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ], begin: Alignment.bottomRight),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
