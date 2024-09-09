import 'package:flutter/material.dart';
import 'package:plant_app_ui/screen/product_details.dart';


class DetailsScreen1 extends StatelessWidget {
  const DetailsScreen1({super.key});


  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower1",
      child: ProductDetails(
        name: "House Shape \n Close Plant",
        image: "images/flower1.png",
        price: "45",
      ),
    );
  }
}

class DetailsScreen2 extends StatelessWidget {
  const DetailsScreen2({super.key});


  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag:"flower2",
      child: ProductDetails(
        name: "Glass Water",
        image: "images/flower2.png",
        price: "60",
      ),
    );
  }
}