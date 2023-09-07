import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
  'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
  'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
  'https://images.unsplash.com/photo-1597362925123-77861d3fbac7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
];

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
      ),
      items: imagesList
          .map(
            (item) => Center(
              child: Image.network(
                item,
                fit: BoxFit.cover,
              ),
            ),
          )
          .toList(),
    );
  }
}
