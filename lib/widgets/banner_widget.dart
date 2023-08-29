import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final _pageController = PageController(viewportFraction: 1, initialPage: 1);
  int currentPage = 1;
  // Current page index
  List<String> assetImages = [
    'assets/banner_one.png',
    'assets/banner_two.png',
    'assets/banner_three.png',
    'assets/banner_four.png'
  ];

  @override
  void initState() {
    super.initState();
    // Start the auto sliding animation
    startAutoSlide();
  }

  @override
  void dispose() {
    // Dispose the page controller and cancel the timer
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  Timer? _timer;

  void startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage == assetImages.length - 1) {
        currentPage = 0;
      } else {
        currentPage++;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          child: PageView.builder(
              controller: _pageController,
              itemCount: assetImages.length,
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                return Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset(
                      assetImages[pagePosition],
                      fit: BoxFit.cover,
                    ));
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              assetImages.length,
              (index) => Container(
                    margin: EdgeInsets.all(1.0),
                    width: 10.0,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 10,
                      color: currentPage == index
                          ? Colors.pink
                          : Colors.grey.shade400,
                    ),
                  )),
        ),
      ],
    );
  }
}
