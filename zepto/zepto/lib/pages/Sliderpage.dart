//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

List images = [
  {"id": 1, "image_path": 'images/vegitables.jpg'},
  {"id": 2, "image_path": 'images/friuts.jpg'},
  {"id": 3, "image_path": 'images/nuts.jpg'},
  {"id": 4, "image_path": 'images/oils.jpg'},
];
final CarouselController carouselController = CarouselController();

@override
int activePage = 0;

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            print(activePage);
          },
          child: CarouselSlider(
              items: images
                  .map((item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))
                  .toList(),
              carouselController: CarouselController(),
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activePage = index;
                  });
                },
              )),
        )
      ],
    );
  }
}
