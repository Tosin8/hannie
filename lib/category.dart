import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'shop.dart';

class Category extends StatefulWidget {
  final String title;
  final String image;
  final String tag;
  const Category(
      {super.key, required this.title, required this.image, required this.tag});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.1),
                      ], begin: Alignment.bottomRight),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: const Shop(),
                                              type: PageTransitionType.fade));
                                    },
                                    icon: const Icon(Icons.arrow_back_ios,
                                        color: Colors.white)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.search,
                                            color: Colors.white)),
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
                          ],
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Product',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Text('View More'),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios, size: 11))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  makeProduct(
                      image: 'assets/ecommerce/shoes/1.jpg',
                      title: 'Shoes',
                      price: '100'),
                  makeProduct(
                      image: 'assets/ecommerce/shoes/2.jpg',
                      title: 'Shoes',
                      price: '100'),
                  makeProduct(
                      image: 'assets/ecommerce/shoes/3.jpg',
                      title: 'Shoes',
                      price: '100'),
                  makeProduct(
                      image: 'assets/ecommerce/shoes/4.jpg',
                      title: 'Shoes',
                      price: '100'),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget makeProduct({image, title, price}) {
    return Container(
        height: 200,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ], begin: Alignment.bottomRight)),
        ));
  }
}
