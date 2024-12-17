import 'dart:async'; // Import the async library for Timer
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> images = [
    'assets/a.png',
    'assets/b.png',
    'assets/c.png',
    'assets/d.png',
    'assets/e.png',
    'assets/f.png',
    'assets/g.png',
  ];

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  late Timer _timer; // Declare a Timer
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startAutoSlide(); // Start the auto slide
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _nextPage();
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: null, // Set to null for infinite scrolling
            itemBuilder: (context, index) {
              // Calculate the actual index in the images list
              int actualIndex1 = index % widget.images.length;
              int actualIndex2 = (index + 1) % widget.images.length;

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      widget.images[actualIndex1],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 8), // Space between images
                  Expanded(
                    child: Image.asset(
                      widget.images[actualIndex2],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 223, 23, 73),),
              onPressed: _previousPage,
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward, color: const Color.fromARGB(255, 223, 23, 73),),
              onPressed: _nextPage,
            ),
          ],
        ),
      ],
    );
  }
}