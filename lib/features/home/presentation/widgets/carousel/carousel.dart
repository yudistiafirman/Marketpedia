import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/image_container/image_container.dart';
import 'package:marketpedia/config/theme/colors.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1546502208-81d149d52bd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2946&q=80',
      'https://images.unsplash.com/photo-1512106374988-c95f566d39ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80',
      'https://images.unsplash.com/photo-1527264935190-1401c51b5bbc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHNhbGVzJTIwY2FtcGFpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1542992015-4a0b729b1385?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHNhbGVzJTIwY2FtcGFpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1580828343064-fde4fc206bc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHNhbGVzJTIwY2FtcGFpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
    ];

    return Column(
      children: [
        CarouselSlider(
          items: imgList.map((image) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: ImageContainer(imageUrl: image),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            disableCenter: true,
            viewportFraction: 1,
            height: 180,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((image) {
            int index = imgList.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? darkBg : grey400,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
