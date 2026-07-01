import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const OnboardingPageIndicator({
    super.key,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        final isActive = index == currentPage;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: isActive ? 20.w : 6.w,
          height: 6.w,
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF7C3AED) : Colors.white24,
            borderRadius: BorderRadius.circular(3.r),
          ),
        );
      }),
    );
  }
}