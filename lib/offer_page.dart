import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items: [
        Container(child: Image.asset("assets/hom.jpg"),
        
        ),
        Container(child: Image.asset("assets/home.jpg"),),
        Container(child: Image.asset("assets/home1.jpg"),),
        Container(child: Image.asset("assets/home2.jpeg"),),
      ],
    );
  }
}
