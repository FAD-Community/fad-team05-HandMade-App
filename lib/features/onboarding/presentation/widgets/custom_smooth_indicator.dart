import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatefulWidget {
  const CustomSmoothIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  State<CustomSmoothIndicator> createState() => _CustomSmoothIndicatorState();
}

class _CustomSmoothIndicatorState extends State<CustomSmoothIndicator> {
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: widget.controller,
      count: widget.count,
      effect: ExpandingDotsEffect(
        expansionFactor: 3,
        spacing: 8,
        radius: 16,
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: AppColors.primary,
        dotColor: Colors.grey,
      ),
    );
  }
}
