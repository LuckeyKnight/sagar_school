import 'dart:async'; // Import the dart:async library for Timer
import 'package:flutter/material.dart';

class ImageSlider2 extends StatefulWidget {
  @override
  _ImageSlider2State createState() => _ImageSlider2State();
}

class _ImageSlider2State extends State<ImageSlider2> {
  final List<String> images = [
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/a3.jpg',
    'assets/a4.jpg',
    'assets/a5.jpg'
  ];

  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer; // Timer for automatic scrolling

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: images.length);
    _pageController.addListener(() {
      int nextPage = _pageController.page!.round();
      if (nextPage == 0) {
        _pageController.jumpToPage(images.length);
      } else if (nextPage == images.length + 1) {
        _pageController.jumpToPage(1);
      }
    });

    // Start the timer for automatic scrolling
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < images.length + 1) {
        _currentPage++;
      } else {
        _currentPage = 1; // Reset to the first image
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Set a height for the slider
      child: PageView.builder(
        controller: _pageController,
        itemCount: images.length + 2, // Add two for the looping effect
        itemBuilder: (context, index) {
          // Adjust the index for the images
          if (index == 0) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150, // Set a specific width for the image
                  child: Image.asset(
                    images[images.length - 1],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10), // Gap between images
                Container(
                  width: 150, // Set a specific width for the image
                  child: Image.asset(
                    images[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          } else if (index == images.length + 1) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150, // Set a specific width for the image
                  child: Image.asset(
                    images[images.length - 2],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10), // Gap between images
                Container(
                  width: 150, // Set a specific width for the image
                  child: Image.asset(
                    images[images.length - 1],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          } else {
            final firstImageIndex = index - 1;
            final secondImageIndex = firstImageIndex + 1;

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150, // Set a specific width for the image
                  child: Image.asset(
                    images[firstImageIndex],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10), // Gap between images
                if (secondImageIndex < images.length) // Check if the second image exists
                  Container(
                    width: 150, // Set a specific width for the image
                    child: Image.asset(
                      images[secondImageIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}