import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/colors.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  const ProductDetails(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            /*
            Hero(
              tag: "Flower1",
              child: Image.asset(
                "images/flower1.png",
              ),
            ),
            */
            bottomParts(context),
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        right: 16,
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // for back button
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                          ),
                          // for filter icon
                          Image.asset(
                            "images/filter icon.png",
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // for name
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                      ),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            height: 1.01),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 42,
                      ),
                      child: Stack(
                        children: [
                          // for image
                          Image.asset(
                            image,
                            width: MediaQuery.of(context).size.width,
                          ),

                          // for scroll dot
                          Padding(
                            padding: const EdgeInsets.only(top: 250),
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 275),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 290),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 305),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // for price
            Positioned(
              top: 270,
              right: 32,
              child: Text(
                "\$$price",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Positioned(
              top: 140,
              right: 40,
              child: Icon(
                Icons.favorite_border,
                size: 32,
                color: primaryColor,
              ),
            ),

            // for add to cart
            Positioned(
              top: 430,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                    color: primaryColor),
                height: 70,
                width: 50,
                child: Icon(
                  Icons.add_circle,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bottomParts(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: const Padding(
          padding: EdgeInsets.only(top: 800, left: 2),
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              // for height
              Column(
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "40cm - 50cm",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ), // for pot
              Column(
                children: [
                  Text(
                    "Pot",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "self watering pot",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              // for temperature
              Column(
                children: [
                  Text(
                    "Temperature",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "18C - 25C",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
